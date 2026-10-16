---
navigation:
  parent: example-setups/example-setups-index.md
  title: 高度なケルタスクォーツ農場
  icon: certus_quartz_crystal
  position: 120
---

# 高度なケルタスクォーツ農場

基本的には[半自動のケルタスクォーツ農場](semiauto-certus-farm.md)と同じですが、ME システムに完全に
組み込んでいます。

芽生えたブロックを大量に貯めておいてときどき手で新しくする代わりに、
この仕組みでは[チャージャーの自動化](charger-automation.md)と[水に投げ込む自動化](throw-in-water-automation.md)を使って
自動で行います。

おおよその速さは[ケルタスクォーツの成長](../ae2-mechanics/certus-growth.md)を見てください。

**これは他のものの後ろに隠れた部分がある複雑な仕組みです。いろいろな角度から見るよう、視点を動かしてください**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/advanced_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) 消滅プレーン1: 設定する GUI は無いが、幸運のエンチャントを付けられる。
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1.7" max="3 3 2">
        (2) ストレージバス1: ケルタスクォーツの水晶に絞り込む。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    塊を壊すサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) 消滅プレーン2: 設定する GUI は無いが、シルクタッチのエンチャントを付ける。
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1.7" max="3 2 2">
        (4) ストレージバス2: ケルタスクォーツブロックに絞り込む。
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    ケルタスクォーツブロックを壊すサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) 形成プレーン: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0.7 2" max="3 1 3">
        (6) インポートバス: 傷ついた芽生えたケルタスクォーツに絞り込む。
        <BlockImage id="flawed_budding_quartz" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    芽生えたブロックを置くサブネット
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="1.7 2 2" max="2 3 3">
        (7) ストレージバス3: ケルタスクォーツの水晶に絞り込む。優先度をメインのストレージより高くする。
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#aaaadd" min="2 1 2" max="3 2 3">
        (8) インターフェース: 傷ついた芽生えたケルタスクォーツを1個保つよう設定し、クラフトカードを入れる。
        <Row><BlockImage id="flawed_budding_quartz" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="1.5 0.5 0" color="#00ff00">
        メインのネットワーク、チャージャーの自動化、水に投げ込む自動化へ
        <Row>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
        </Row>
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## 設定

### 塊を壊す部分:

* 1つ目の <ItemLink id="annihilation_plane" />(1)は GUI が無く設定できませんが、幸運のエンチャントを付けられます。
* 1つ目の <ItemLink id="storage_bus" />(2)は <ItemLink id="certus_quartz_crystal" /> に絞り込みます。

### ケルタスクォーツブロックを壊す部分:

* 2つ目の <ItemLink id="annihilation_plane" />(3)は GUI が無く設定できませんが、シルクタッチのエンチャントが必要です。
* 2つ目の <ItemLink id="storage_bus" />(4)は <ItemLink id="quartz_block" /> に絞り込みます。

### 芽生えたブロックを置く部分:

* <ItemLink id="formation_plane" />(5)は初期の設定のままです。
* <ItemLink id="import_bus" />(6)は <ItemLink id="flawed_budding_quartz" /> に絞り込みます。

### メインのネットワーク:

* 3つ目の <ItemLink id="storage_bus" />(7)は <ItemLink id="certus_quartz_crystal" /> に絞り込み、
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)をメインのストレージより高くします。
* <ItemLink id="interface" />(8)は傷ついた芽生えたケルタスクォーツを1個保つよう設定し、<ItemLink id="crafting_card" /> を入れます。

## しくみ

### 塊を壊す部分:

塊を壊すサブネットは、[簡単なケルタスクォーツ農場](simple-certus-farm.md)のサブネットとほとんど同じように動きます。

1. <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージは
   <ItemLink id="certus_quartz_crystal" /> に絞り込んだ <ItemLink id="storage_bus" /> だけなので、<ItemLink id="quartz_cluster" /> しか壊せません。
2. <ItemLink id="storage_bus" /> がケルタスクォーツの水晶を樽に保管します。

### ケルタスクォーツブロックを壊す部分

ケルタスクォーツブロックを壊すサブネットは、使い切った芽生えたブロックがただの <ItemLink id="quartz_block" /> になったら壊します。
塊を壊す部分と同じように動きます。

1. <ItemLink id="annihilation_plane" /> は前にあるものを壊そうとしますが、サブネットのストレージは
   <ItemLink id="quartz_block" /> に絞り込んだ <ItemLink id="storage_bus" /> だけなので、<ItemLink id="quartz_block" /> しか壊せません。
   プレーンにはシルクタッチが必要です。そうすれば芽生えたブロックは壊れても劣化しないので、プレーンが早すぎるうちに壊すことはありません。
2. <ItemLink id="storage_bus" /> がケルタスクォーツブロックを <ItemLink id="interface" /> に保管するので、
   [水に投げ込む自動化](throw-in-water-automation.md)がそれを使って新しい <ItemLink id="flawed_budding_quartz" /> を作れます。

### 芽生えたブロックを置く部分

芽生えたブロックを置くサブネットは、壊すサブネットが使い切った古いものを壊したら、新しい <ItemLink id="flawed_budding_quartz" /> を置きます。

1. <ItemLink id="import_bus" /> が <ItemLink id="interface" /> から芽生えたブロックを[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に搬入します
2. サブネットのストレージは <ItemLink id="formation_plane" /> だけなので、プレーンが芽生えたブロックを置きます。

### メインのネットワーク

* <ItemLink id="storage_bus" /> は、メインのネットワーク(と[チャージャーの自動化](charger-automation.md))が樽の全てのケルタスクォーツの水晶にアクセスできるようにします。
  [優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を高くしてあるので、ケルタスクォーツの水晶は
  メインのストレージではなく樽に優先して戻されます。
* <ItemLink id="interface" /> は、芽生えたブロックを置くサブネットに <ItemLink id="flawed_budding_quartz" /> を使わせ、
    ケルタスクォーツブロックを壊すサブネットが使い切ったブロックをメインのネットワークに戻す手段になります。
    <ItemLink id="crafting_card" /> により、インターフェースはメインのネットワークの[自動クラフト](../ae2-mechanics/autocrafting.md)に新しい芽生えたブロックを要求できます。
