---
navigation:
  parent: example-setups/example-setups-index.md
  title: バケツを満たす装置
  icon: minecraft:water_bucket
---

# バケツを満たす装置

[バケツを空にする装置](bucket-emptier.md)も見てください。

これは <ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込むためのものです。

ときには不便なことに、液体そのものではなくバケツ入りの液体が必要なことがあります。機械がやってくれる場合もありますが
(Thermal Expansion の Fluid Transposer など)、都合よくそれができるMODがいつもあるとは限りません。幸い、
バニラの Minecraft には少し不便ながら <ItemLink id="minecraft:dispenser" /> という方法があります。

**[パターンエンコーディングターミナル](../items-blocks-machines/terminals.md#pattern-encoding-terminal)の液体の代用を使えば、
クラフトのレシピでバケツの代わりに液体そのものを使えるので、これが必要ないことも多いです。**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_filler.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) パターンプロバイダー: クラフトの固定を「レッドストーン信号で」にし、関係する処理パターンを入れる。

        <Row>
        ![Fill Pattern](../assets/diagrams/water_fill_pattern_small.png)
        ![Fill Pattern](../assets/diagrams/lava_fill_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (2) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 1.1 0.8" max="3.9 1.9 1">
        (3) ストレージバス1: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) 形成プレーン: 反転カードを使い、バケツを除外するよう絞り込む。
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 2 1.2" max="3.8 2.2 1.8">
        (5) インポートバス: 反転カードを使い、バケツを除外するよう絞り込む。
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (6) ストレージバス2: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## 設定

* <ItemLink id="pattern_provider" />(1)は、クラフトの固定を「レッドストーン信号で」にし、関係する <ItemLink id="processing_pattern" /> を入れます。
  
    ![Charger Pattern](../assets/diagrams/water_fill_pattern.png)
    ![Charger Pattern](../assets/diagrams/lava_fill_pattern.png)

* <ItemLink id="interface" />(2)は初期の設定のままです。
* 1つ目の <ItemLink id="storage_bus" />(3)は初期の設定のままです。
* <ItemLink id="formation_plane" />(4)は、反転カードを使ってバケツを除外するよう絞り込みます。
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* <ItemLink id="import_bus" />(5)は、反転カードを使ってバケツを除外するよう絞り込みます。
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* 2つ目の <ItemLink id="storage_bus" />(6)は初期の設定のままです。

## しくみ

1. <ItemLink id="pattern_provider" /> が材料を <ItemLink id="interface" /> に送ります。
   (実際には最適化のため、ストレージバスと形成プレーンをプロバイダーの面の延長のように使って直接送ります。アイテムが実際にインターフェースに入ることはありません。)
2. [パイプのサブネット](pipe-subnet.md#providing-to-multiple-places)と <ItemLink id="formation_plane" /> で説明している仕組みにより、
   バケツが <ItemLink id="minecraft:dispenser" /> に入り、液体は形成プレーンが置きます。
3. <ItemLink id="minecraft:comparator" /> がディスペンサーの中のバケツを検知し、ディスペンサーに信号を送ると同時に
   <ItemLink id="pattern_provider" /> を止めます。
4. ディスペンサーがバケツで液体をすくい、中には満たされたバケツが残ります。
5. <ItemLink id="import_bus" /> が満たされたバケツをディスペンサーから取り出し、
   <ItemLink id="storage_bus" /> を通してパターンプロバイダーに保管して、メインのネットワークに戻します。
6. コンパレーターがディスペンサーが空になったのを見て、プロバイダーの停止を解きます。
