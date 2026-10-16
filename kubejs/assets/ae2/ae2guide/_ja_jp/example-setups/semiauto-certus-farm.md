---
navigation:
  parent: example-setups/example-setups-index.md
  title: 半自動のケルタス農場
  icon: certus_quartz_crystal
  position: 115
---

# 半自動のケルタス農場

残念ながら、[簡単なケルタス農場](simple-certus-farm.md)を完全に自動で動かすには <ItemLink id="flawless_budding_quartz" /> が必要です。
そのためには[空間 I/O](../ae2-mechanics/spatial-io.md)を使うか、[隕石](../ae2-mechanics/meteorites.md)の場所に農場を作る必要があります。

しかし、AE2 はブロックを置いたり壊したりできるので、*芽生えたケルタスを農場に入れ替えさせる*ことも
できるかもしれません。(ときどき入力の樽に <ItemLink id="flawed_budding_quartz" /> を入れ、使い切った芽生えたケルタスの樽から
<ItemLink id="quartz_block" /> を取り出す必要があります)

これを完全に自動でするには、[高度なケルタス農場](advanced-certus-farm.md)を見てください。

この農場は[簡単なケルタス農場](simple-certus-farm.md)より少し複雑です。実は3つの別々の仕組みを
詰め込んでいるからです。

おおよその速さは[ケルタスの成長](../ae2-mechanics/certus-growth.md)を見てください。

**これは他のものの後ろに隠れた部分がある複雑な構造です。いろいろな角度から見回してください**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/semiauto_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) 消滅プレーン 1: 設定する GUI は無いが、幸運のエンチャントを付けられる。
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1" max="2.3 3 2">
        (2) ストレージバス 1: ケルタスクォーツの結晶に絞り込む。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    塊を壊すサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) 消滅プレーン 2: 設定する GUI は無いが、シルクタッチを付ける。
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1" max="2.3 2 2">
        (4) ストレージバス 2: ケルタスクォーツブロックに絞り込む。
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    ケルタスのブロックを壊すサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) 形成プレーン: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0 1" max="2.3 1 2">
        (6) インポートバス: 初期の設定のまま。
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    芽生えたブロックを置くサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="0.7 2 1" max="1 3 2">
        (7) ストレージバス 3: ケルタスクォーツの結晶に絞り込む。優先度をメインのストレージより高くする。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

    <DiamondAnnotation pos="1.5 0.5 1.5" color="#00ff00">
        欠けた芽生えたケルタスクォーツを手で入れる。
        <BlockImage id="flawed_budding_quartz" scale="2" />
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 1.5 1.5" color="#00ff00">
        ケルタスクォーツブロックを手で取り出す。
        <BlockImage id="quartz_block" scale="2" />
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## 設定

### 塊を壊す部分:

* 1つ目の <ItemLink id="annihilation_plane" />(1)は GUI が無く設定できませんが、幸運のエンチャントを付けられます。
* 1つ目の <ItemLink id="storage_bus" />(2)は <ItemLink id="certus_quartz_crystal" /> に絞り込みます。

### ケルタスのブロックを壊す部分:

* 2つ目の <ItemLink id="annihilation_plane" />(3)は GUI が無く設定できませんが、シルクタッチを付ける必要があります。
* 2つ目の <ItemLink id="storage_bus" />(4)は <ItemLink id="quartz_block" /> に絞り込みます。

### 芽生えたブロックを置く部分:

* <ItemLink id="formation_plane" />(5)は初期の設定のままです。
* <ItemLink id="import_bus" />(6)は初期の設定のままです。

### メインのネットワーク:

* 3つ目の <ItemLink id="storage_bus" />(7)は <ItemLink id="certus_quartz_crystal" /> に絞り込み、
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)をメインのストレージより高くします。

## しくみ

### 塊を壊す部分:

塊を壊すサブネットは、[簡単なケルタス農場](simple-certus-farm.md)のサブネットとほぼ同じように動きます。

1. <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージは <ItemLink id="certus_quartz_crystal" /> に
   絞り込んだ <ItemLink id="storage_bus" /> だけなので、<ItemLink id="quartz_cluster" /> しか壊せません。
2. <ItemLink id="storage_bus" /> がケルタスクォーツの結晶を樽に保管します。

### ケルタスのブロックを壊す部分

ケルタスのブロックを壊すサブネットは、使い切った芽生えたブロックがただの <ItemLink id="quartz_block" /> になったら壊します。
塊を壊す部分と同じように動きます。

1. <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージは <ItemLink id="quartz_block" /> に
   絞り込んだ <ItemLink id="storage_bus" /> だけなので、<ItemLink id="quartz_block" /> しか壊せません。
   プレーンにはシルクタッチが必要です。そうすれば芽生えたブロックが壊したときに劣化しないので、プレーンが早まって壊すことがありません。
2. <ItemLink id="storage_bus" /> がケルタスクォーツブロックを使い切った芽生えたケルタスの樽に保管します。
   <ItemLink id="charged_certus_quartz_crystal" /> と一緒に手で水に投げ込んで直す必要があります。

### 芽生えたブロックを置く部分

芽生えたブロックを置くサブネットは、壊すサブネットが使い切った古いブロックを壊したら、新しい <ItemLink id="flawed_budding_quartz" /> を置きます。

1. <ItemLink id="import_bus" /> が入力の樽から芽生えたブロックを搬入します。
2. サブネットのストレージは <ItemLink id="formation_plane" /> だけなので、プレーンが芽生えたブロックを置きます。

### メインのネットワーク

* <ItemLink id="storage_bus" /> は、メインのネットワーク(と[チャージャーの自動化](charger-automation.md))から樽のケルタスクォーツの結晶を全て使えるようにします。
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を高くしているので、ケルタスクォーツの結晶は
  メインのストレージではなく優先して樽に戻されます。
