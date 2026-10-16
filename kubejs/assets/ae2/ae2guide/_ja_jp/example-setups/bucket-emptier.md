---
navigation:
  parent: example-setups/example-setups-index.md
  title: バケツを空にする装置
  icon: minecraft:bucket
---

# バケツを空にする装置

[バケツを満たす装置](bucket-filler.md)も見てください。

これは <ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込むためのものです。

ときには不便なことに、液体そのものが必要なのに、液体をバケツ入りでしか作れないことがあります。機械がやってくれる場合もありますが
(Thermal Expansion の Fluid Transposer など)、都合よくそれができるMODがいつもあるとは限りません。幸い、
バニラの Minecraft には少し不便ながら <ItemLink id="minecraft:dispenser" /> という方法があります。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_emptier.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) パターンプロバイダー: クラフトの固定を「レッドストーン信号で」にし、ブロックモードをオンにして、関係する処理パターンを入れる。

        <Row>
        ![Fill Pattern](../assets/diagrams/water_empty_pattern_small.png)
        ![Fill Pattern](../assets/diagrams/lava_empty_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (2) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 2 1.1" max="3.9 2.2 1.9">
        (3) ストレージバス1: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) 消滅プレーン: 設定する GUI は無い。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 1.2 0.8" max="3.8 1.8 1">
        (5) インポートバス: バケツに絞り込む。
        <ItemImage id="minecraft:bucket" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (6) ストレージバス2: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## 設定

* <ItemLink id="pattern_provider" />(1)は、クラフトの固定を「レッドストーン信号で」にし、ブロックモードをオンにして、
  関係する <ItemLink id="processing_pattern" /> を入れます。
  
    ![Charger Pattern](../assets/diagrams/water_empty_pattern.png)
    ![Charger Pattern](../assets/diagrams/lava_empty_pattern.png)

* <ItemLink id="interface" />(2)は初期の設定のままです。
* 1つ目の <ItemLink id="storage_bus" />(3)は初期の設定のままです。
* <ItemLink id="annihilation_plane" />(4)は GUI が無く設定できません。
* <ItemLink id="import_bus" />(5)はバケツに絞り込みます。
  <ItemImage id="minecraft:bucket" scale="2" />
* 2つ目の <ItemLink id="storage_bus" />(6)は初期の設定のままです。

## しくみ

1. <ItemLink id="pattern_provider" /> が材料を <ItemLink id="interface" /> に送ります。
   (実際には最適化のため、ストレージバスをプロバイダーの面の延長のように使って直接送ります。アイテムが実際にインターフェースに入ることはありません。)
2. [パイプのサブネット](pipe-subnet.md#providing-to-multiple-places)で説明している仕組みにより、
   バケツが <ItemLink id="minecraft:dispenser" /> に入ります。
3. <ItemLink id="minecraft:comparator" /> がディスペンサーの中のバケツを検知し、ディスペンサーに信号を送ると同時に
   <ItemLink id="pattern_provider" /> を止めます。
4. ディスペンサーがバケツの液体を出し、中には空のバケツが残ります。
5. <ItemLink id="import_bus" /> が空のバケツをディスペンサーから取り出し、
   <ItemLink id="storage_bus" /> を通してパターンプロバイダーに保管して、メインのネットワークに戻します。
6. コンパレーターがディスペンサーが空になったのを見て、プロバイダーの停止を解きます。
