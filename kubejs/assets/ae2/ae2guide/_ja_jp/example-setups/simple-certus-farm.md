---
navigation:
  parent: example-setups/example-setups-index.md
  title: 簡単なケルタス農場
  icon: certus_quartz_crystal
  position: 110
---

# 簡単なケルタス農場

[ケルタスの成長](../ae2-mechanics/certus-growth.md)で述べたとおり、<ItemLink id="certus_quartz_crystal" /> の
収穫の自動化には <ItemLink id="annihilation_plane" /> と <ItemLink id="storage_bus" /> を使います。
<ItemLink id="growth_accelerator" /> でケルタスクォーツの芽の成長を大きく速め、育ちきった <ItemLink id="quartz_cluster" /> を
プレーンが壊します。育ちきっていないケルタスの芽は何も落とさないのではなく <ItemLink id="certus_quartz_dust" /> を落とすという、
妙に都合のよい性質を利用して絞り込みます。

この農場は <ItemLink id="flawless_budding_quartz" /> なら完全に自動で動きますが、欠けた・傷ついた・壊れかけの
芽生えたケルタスクォーツでは、芽生えたブロックを手で入れ替える必要があります。または、[半自動のケルタス農場](semiauto-certus-farm.md)や
[高度なケルタス農場](advanced-certus-farm.md)のように自動で入れ替えます。

おおよその速さは[ケルタスの成長](../ae2-mechanics/certus-growth.md)を見てください。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/simple_certus_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="3.7 1 1" max="4 2 2">
        (1) 消滅プレーン: 設定する GUI は無いが、幸運のエンチャントを付けられる。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="3.3 2 2">
        (2) ストレージバス 1: ケルタスクォーツの結晶に絞り込む。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 .7" max="2 2 1">
        (3) ストレージバス 2: ケルタスクォーツの結晶に絞り込む。優先度をメインのストレージより高くする。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* 1つ目の <ItemLink id="annihilation_plane" />(1)は GUI が無く設定できませんが、幸運のエンチャントを付けられます。
* 1つ目の <ItemLink id="storage_bus" />(2)は <ItemLink id="certus_quartz_crystal" /> に絞り込みます。
* 2つ目の <ItemLink id="storage_bus" />(3)は <ItemLink id="certus_quartz_crystal" /> に絞り込み、
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)をメインのストレージより高くします。

## しくみ

1. <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージは <ItemLink id="certus_quartz_crystal" /> に
   絞り込んだ <ItemLink id="storage_bus" /> だけなので、<ItemLink id="quartz_cluster" /> しか壊せません。
4. 1つ目の <ItemLink id="storage_bus" /> がケルタスクォーツの結晶を樽に保管します。
5. 2つ目の <ItemLink id="storage_bus" /> は、メインのネットワークから樽のケルタスクォーツの結晶を全て使えるようにします。
   [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を高くしているので、ケルタスクォーツの結晶は
   メインのストレージではなく優先して樽に戻されます。
