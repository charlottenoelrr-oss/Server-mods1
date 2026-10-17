# Mr1 起動ツール(Prism Launcher を使わない人向け。公式の Minecraft Launcher で遊ぶ)
# 1. 初回だけ: NeoForge を入れて、公式ランチャーに「Mr1」の起動構成を作る
# 2. 毎回: GitHub からパックを更新して、公式ランチャーを開く
# ゲームのフォルダは %APPDATA%\.minecraft_mr1(普段のマイクラとは分ける)

$ErrorActionPreference = 'Stop'
$NeoForgeVersion = '21.1.259'
$VersionId = "neoforge-$NeoForgeVersion"
$PackUrl = 'https://raw.githubusercontent.com/charlottenoelrr-oss/Server-mods1/main/pack.toml'
$McDir = Join-Path $env:APPDATA '.minecraft'
if ($env:MR1_TEST_MCDIR) { $McDir = $env:MR1_TEST_MCDIR }   # 試験用
$GameDir = Join-Path $env:APPDATA '.minecraft_mr1'
if ($env:MR1_TEST_GAMEDIR) { $GameDir = $env:MR1_TEST_GAMEDIR }   # 試験用
$ProfileKey = 'mr1'
$Here = Split-Path -Parent $MyInvocation.MyCommand.Path

function Say($msg) { Write-Host $msg }
function Fail($msg) {
    Write-Host ''
    Write-Host "!!! $msg" -ForegroundColor Red
    Write-Host ''
    Read-Host 'Enter キーで閉じます'
    exit 1
}

# --- Java 21 を探す(公式ランチャーに付いているものを優先) ---
function Find-Java {
    $candidates = @(
        (Join-Path $env:LOCALAPPDATA 'Packages\Microsoft.4297127D64EC6_8wekyb3d8bbwe\LocalCache\Local\runtime\java-runtime-delta\windows-x64\java-runtime-delta\bin\java.exe'),
        (Join-Path $McDir 'runtime\java-runtime-delta\windows-x64\java-runtime-delta\bin\java.exe'),
        (Join-Path $env:LOCALAPPDATA 'Packages\Microsoft.4297127D64EC6_8wekyb3d8bbwe\LocalCache\Local\runtime\java-runtime-epsilon\windows-x64\java-runtime-epsilon\bin\java.exe'),
        (Join-Path $McDir 'runtime\java-runtime-epsilon\windows-x64\java-runtime-epsilon\bin\java.exe')
    )
    foreach ($c in $candidates) { if (Test-Path $c) { return $c } }
    $cmd = Get-Command java -ErrorAction SilentlyContinue
    if ($cmd) {
        $v = & $cmd.Source -version 2>&1 | Out-String
        if ($v -match 'version "(\d+)') { if ([int]$Matches[1] -ge 21) { return $cmd.Source } }
    }
    return $null
}

# --- 公式ランチャーを開く ---
function Start-Launcher {
    $exes = @(
        'C:\XboxGames\Minecraft Launcher\Content\Minecraft.exe',
        (Join-Path ${env:ProgramFiles(x86)} 'Minecraft Launcher\MinecraftLauncher.exe'),
        (Join-Path $env:ProgramFiles 'Minecraft Launcher\MinecraftLauncher.exe')
    )
    foreach ($e in $exes) { if (Test-Path $e) { Start-Process $e; return $true } }
    if (Test-Path (Join-Path $env:LOCALAPPDATA 'Packages\Microsoft.4297127D64EC6_8wekyb3d8bbwe')) {
        Start-Process 'explorer.exe' 'shell:AppsFolder\Microsoft.4297127D64EC6_8wekyb3d8bbwe!Minecraft'
        return $true
    }
    return $false
}

Say '=== Mr1 起動ツール ==='

if (-not (Test-Path (Join-Path $McDir 'launcher_profiles.json'))) {
    Fail "公式の Minecraft Launcher が見つかりません($McDir\launcher_profiles.json が無い)。`n    公式ランチャーを入れて一度起動し、ログインしてから、もう一度このツールを開いてください。"
}

$java = Find-Java
if (-not $java) {
    Fail "Java 21 が見つかりません。`n    公式ランチャーで一度 Minecraft 1.21.1 を起動するか、https://adoptium.net/ から Java 21 を入れてください。"
}
Say "Java: $java"

# --- 初回: NeoForge を入れる ---
$versionJson = Join-Path $McDir "versions\$VersionId\$VersionId.json"
if (-not (Test-Path $versionJson)) {
    Say "NeoForge $NeoForgeVersion を入れます(初回だけ。少し時間がかかります)..."
    $installer = Join-Path $env:TEMP "neoforge-$NeoForgeVersion-installer.jar"
    Invoke-WebRequest -UseBasicParsing -Uri "https://maven.neoforged.net/releases/net/neoforged/neoforge/$NeoForgeVersion/neoforge-$NeoForgeVersion-installer.jar" -OutFile $installer
    & $java -jar $installer --install-client $McDir
    if (-not (Test-Path $versionJson)) { Fail 'NeoForge のインストールに失敗しました。上のメッセージを管理者に見せてください。' }
    Remove-Item $installer -ErrorAction SilentlyContinue
    Say 'NeoForge を入れました。'
}

# 公式ランチャーが開いていると、閉じたときに起動構成の書き換えが消えることがあるので、先に閉じてもらう
if (Get-Process -Name "Minecraft","MinecraftLauncher" -ErrorAction SilentlyContinue) {
    Say "公式ランチャーが開いています。いったん閉じてから Enter キーを押してください。"
    Read-Host | Out-Null
}
# --- 公式ランチャーに「Mr1」の起動構成を作る(あれば版とフォルダだけ合わせる) ---
New-Item -ItemType Directory -Force $GameDir | Out-Null
$profilesFile = Join-Path $McDir 'launcher_profiles.json'
$text = [IO.File]::ReadAllText($profilesFile, [Text.Encoding]::UTF8)
$json = $text | ConvertFrom-Json
if (-not $json.profiles) { $json | Add-Member -NotePropertyName profiles -NotePropertyValue ([pscustomobject]@{}) -Force }
$existing = $json.profiles.PSObject.Properties[$ProfileKey]
$now = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ss.fffZ')
$changed = $false
if ($existing) {
    $p = $existing.Value
    if ($p.lastVersionId -ne $VersionId) { $p.lastVersionId = $VersionId; $changed = $true }
    if ($p.gameDir -ne $GameDir) { $p | Add-Member -NotePropertyName gameDir -NotePropertyValue $GameDir -Force; $changed = $true }
} else {
    $p = [pscustomobject]@{
        name          = 'Mr1'
        type          = 'custom'
        lastVersionId = $VersionId
        gameDir       = $GameDir
        javaArgs      = '-Xmx8G -Xms2G -XX:+UseG1GC'
        icon          = 'Furnace'
        created       = $now
        lastUsed      = $now
    }
    $json.profiles | Add-Member -NotePropertyName $ProfileKey -NotePropertyValue $p -Force
    $changed = $true
}
if ($changed) {
    Copy-Item $profilesFile "$profilesFile.mr1-backup" -Force
    $out = $json | ConvertTo-Json -Depth 32
    [IO.File]::WriteAllText($profilesFile, $out, (New-Object Text.UTF8Encoding($false)))
    Say '公式ランチャーに「Mr1」の起動構成を作りました(メモリ 8GB。ランチャーの「起動構成」から変えられます)。'
}

# --- 毎回: GitHub からパックを更新 ---
$bootstrap = Join-Path $GameDir 'packwiz-installer-bootstrap.jar'
Copy-Item (Join-Path $Here 'packwiz-installer-bootstrap.jar') $bootstrap -Force
Say 'GitHub からパックを更新します...'
Push-Location $GameDir
try {
    & $java -jar $bootstrap $PackUrl
    $rc = $LASTEXITCODE
} finally {
    Pop-Location
}
if ($rc -ne 0) {
    Say "更新に失敗しました(終了コード $rc)。前の MOD のままでよければ、このまま公式ランチャーから遊べます。"
} else {
    Say '更新しました。'
}

# --- 公式ランチャーを開く ---
if ($env:MR1_TEST_NOLAUNCH) { Say "(試験: 公式ランチャーは開かない)"; exit 0 }
if (Start-Launcher) {
    Say ''
    Say '公式ランチャーを開きました。左下(または「プレイ」の横)の起動構成で「Mr1」を選んで、プレイを押してください。'
    Say '(テストサーバーに入るときは、タイトル画面左上の「MOD の構成」でテストサーバー用に切り替えてください)'
    Start-Sleep -Seconds 8
} else {
    Fail '公式ランチャーが見つかりませんでした。自分で公式ランチャーを開いて「Mr1」を選んでください。'
}
