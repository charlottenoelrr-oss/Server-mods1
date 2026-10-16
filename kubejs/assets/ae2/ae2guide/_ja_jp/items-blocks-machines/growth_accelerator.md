---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 成長加速器
  icon: growth_accelerator
  position: 310
categories:
- machines
item_ids:
- ae2:growth_accelerator
---

# 成長加速器

<BlockImage id="growth_accelerator" p:powered="true" scale="8"/>

成長加速器を芽生えたブロックの隣に置くと、ケルタスやアメジストの[成長](../ae2-mechanics/certus-growth.md)を大きく速めます。

不思議なことに、いろいろな植物の成長*も*速められます。

自然に起こるランダムティックに加えて、隣のブロックに「ランダムティック」を与えることでそうしています。
理論上、加速器1台でふだんの約90倍の速さで育ち、効果は足し算で重なります。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/growth_accelerator.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

電力は上か下から、AE2 の[ケーブル](cables.md)か他のMODの電力ケーブルで送ります。AE2 の電力(AE)と
Forge Energy(FE)のどちらも受け取れます。

手で動かすには、上か下に <ItemLink id="crank" /> を付けて右クリックします。

上と下は、付いているピンクのフラックスの飾りで見分けられます。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/accelerator_connections.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## レシピ

<RecipeFor id="growth_accelerator" />
