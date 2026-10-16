# Modrinth に同じファイル(sha512一致)がある jar を .pw.toml に置き換える
# mods\ と ServerMods\<フォルダ>\ の jar を対象にし、.pw.toml は jar と同じフォルダに作る
param([string]$PackDir = "D:\mc\pack")
$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ua = @{ 'User-Agent' = 'Mr1-packwiz-import/1.1' }

$dirs = @("$PackDir\mods") + @(Get-ChildItem -LiteralPath "$PackDir\ServerMods" -Directory -ErrorAction SilentlyContinue | ForEach-Object FullName)
$jars = foreach ($d in $dirs) { Get-ChildItem -LiteralPath $d -Filter *.jar -ErrorAction SilentlyContinue }
$byHash = @{}
foreach ($j in $jars) { $byHash[(Get-FileHash -LiteralPath $j.FullName -Algorithm SHA512).Hash.ToLower()] = $j }

$body = @{ hashes = @($byHash.Keys); algorithm = 'sha512' } | ConvertTo-Json
$res = Invoke-RestMethod -Method Post -Uri 'https://api.modrinth.com/v2/version_files' -Headers $ua -ContentType 'application/json' -Body $body

$versions = @{}
foreach ($p in $res.PSObject.Properties) { $versions[$p.Name] = $p.Value }
if ($versions.Count -eq 0) { "no matches"; return }

$projIds = @($versions.Values | ForEach-Object { $_.project_id } | Select-Object -Unique)
$projMap = @{}
for ($i = 0; $i -lt $projIds.Count; $i += 100) {
    $chunk = $projIds[$i..([Math]::Min($i + 99, $projIds.Count - 1))]
    $ids = '[' + (($chunk | ForEach-Object { '"' + $_ + '"' }) -join ',') + ']'
    foreach ($pr in (Invoke-RestMethod -Uri ('https://api.modrinth.com/v2/projects?ids=' + [uri]::EscapeDataString($ids)) -Headers $ua)) { $projMap[$pr.id] = $pr }
}

function Get-Side($pr) {
    if ($pr.server_side -eq 'unsupported') { return 'client' }
    if ($pr.client_side -eq 'unsupported') { return 'server' }
    return 'both'
}

$done = 0
foreach ($h in $versions.Keys) {
    $v = $versions[$h]; $jar = $byHash[$h]; $pr = $projMap[$v.project_id]
    $file = $v.files | Where-Object { $_.hashes.sha512 -eq $h } | Select-Object -First 1
    $slug = $pr.slug
    $name = $pr.title.Replace('\', '\\').Replace('"', '\"')
    $toml = @"
name = "$name"
filename = "$($jar.Name)"
side = "$(Get-Side $pr)"

[download]
url = "$($file.url)"
hash-format = "sha512"
hash = "$h"

[update]
[update.modrinth]
mod-id = "$($v.project_id)"
version = "$($v.id)"
"@
    $dir = $jar.DirectoryName
    $out = Join-Path $dir "$slug.pw.toml"
    if (Test-Path -LiteralPath $out) { $out = Join-Path $dir ("$slug-" + $v.id + ".pw.toml") }
    [IO.File]::WriteAllText($out, $toml + "`n", (New-Object Text.UTF8Encoding($false)))
    Remove-Item -LiteralPath $jar.FullName
    $done++
}
"modrinth matched: $done / $($jars.Count)"
