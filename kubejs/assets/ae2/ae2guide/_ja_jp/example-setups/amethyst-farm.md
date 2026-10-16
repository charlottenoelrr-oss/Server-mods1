---
navigation:
  parent: example-setups/example-setups-index.md
  title: アメジスト農場
  icon: minecraft:amethyst_shard
---

# アメジストの栽培

<ItemLink id="growth_accelerator" /> はアメジストにも効きますが、[ケルタスクォーツの芽](../items-blocks-machines/budding_certus.md)を
<ItemLink id="annihilation_plane" /> で絞り込むいつもの方法は、アメジストの芽には使えません。育ちきっていないケルタスクォーツの芽は
<ItemLink id="certus_quartz_dust" /> を落としますが、育ちきっていないアメジストの芽は何も落とさないので、消滅プレーンは必ず壊してしまいます。
ネットワークは「何も無いもの」なら必ず保管できるからです。

これを回避するには、消滅プレーンにシルクタッチのエンチャントを付けます。すると育ちきっていないアメジストの芽も何かを落とす
(芽のブロックの各段階)ようになるので、絞り込めます。

その後、<ItemLink id="minecraft:amethyst_cluster" /> を <ItemLink id="formation_plane" /> でもう一度置き、
シルクタッチの無い <ItemLink id="annihilation_plane" /> で壊し直して、<ItemLink id="minecraft:amethyst_shard" /> を手に入れます。

塊には向きがあるので、形成プレーンのちょうど反対側に固体ブロックの面が必要なことに注意してください。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/amethyst_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 1 1" max="3 2 2">
        (1) 消滅プレーン1: 設定する GUI は無いが、シルクタッチのエンチャントを付ける。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1 1" max="2.3 2 2">
        (2) 形成プレーン: アメジストの塊に絞り込む。
        <ItemImage id="minecraft:amethyst_cluster" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 0.7 1" max="2 1 2">
        (3) 消滅プレーン2: 設定する GUI は無いが、幸運のエンチャントを付けられる。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="1.3 1 2">
        (4) ストレージバス1: アメジストのかけらに絞り込む。
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 .7" max="1 1 1">
        (5) ストレージバス2: アメジストのかけらに絞り込む。優先度をメインのストレージより高くする。
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* 1つ目の <ItemLink id="annihilation_plane" />(1)は GUI が無く設定できませんが、シルクタッチのエンチャントが必要です。
* <ItemLink id="formation_plane" />(2)は <ItemLink id="minecraft:amethyst_cluster" /> に絞り込みます。
* 2つ目の <ItemLink id="annihilation_plane" />(3)は GUI が無く設定できませんが、幸運のエンチャントを付けられます。
* 1つ目の <ItemLink id="storage_bus" />(4)は <ItemLink id="minecraft:amethyst_shard" /> に絞り込みます。
* 2つ目の <ItemLink id="storage_bus" />(5)は <ItemLink id="minecraft:amethyst_shard" /> に絞り込み、
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)をメインのストレージより高くします。

## しくみ

1. 1つ目の <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージはアメジストの塊に絞り込んだ
    <ItemLink id="formation_plane" /> だけなので、<ItemLink id="minecraft:amethyst_cluster" /> しか壊せません。これがうまくいくのは
プレーンにシルクタッチが付いているからで、そうでなければ育ちきっていない芽は何も落とさないので壊せてしまいます。
2. <ItemLink id="formation_plane" /> が向かいのブロックに塊を置きます。
3. 2つ目の <ItemLink id="annihilation_plane" /> が塊を壊し、<ItemLink id="minecraft:amethyst_shard" /> ができます。
4. 1つ目の <ItemLink id="storage_bus" /> がかけらを樽に保管します。2つ目の消滅プレーンが出会うのは育ちきった塊だけのはずなので、
厳密にはこれを絞り込む必要はありません。
5. 2つ目の <ItemLink id="storage_bus" /> は、メインのネットワークが樽の全てのアメジストのかけらにアクセスできるようにします。
[優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を高くしてあるので、アメジストのかけらは
メインのストレージではなく樽に優先して戻されます。
