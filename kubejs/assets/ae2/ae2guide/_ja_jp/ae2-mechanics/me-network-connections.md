---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: ネットワークの接続
  icon: fluix_glass_cable
---

# ネットワークの接続

## 「ネットワーク」とは?

「ネットワーク」とは、[ケーブル](../items-blocks-machines/cables.md)やフルブロックの機械・[デバイス](../ae2-mechanics/devices.md)などの、[チャンネル](../ae2-mechanics/channels.md)を通せるブロックでつながった
[デバイス](../ae2-mechanics/devices.md)のまとまりのことです。
(<ItemLink id="charger" />、<ItemLink id="interface" />、<ItemLink id="drive" /> など)
実は、厳密にはケーブル1本でもネットワークです。

## デバイスの位置についての余談

特定のネットワークの働きをする[デバイス](../ae2-mechanics/devices.md)(<ItemLink id="interface" /> が
[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に入れたり取り出したりする、<ItemLink id="level_emitter" /> が
ネットワークのストレージの中身を読む、<ItemLink id="drive" /> がネットワークのストレージになる、など)では、
デバイスの物理的な位置は関係ありません。

もう一度言います。**デバイスの物理的な位置は関係ありません**。大事なのは、デバイスがネットワークにつながっていること
(と、もちろんどのネットワークにつながっているか)だけです。

## ネットワークの接続

ネットワークに何がつながっているかを簡単に確かめるには、<ItemLink id="network_tool" /> を使いましょう。ネットワーク上の
全ての部品が表示されるので、あるべきでないものが見えたり、あるべきものが見えなかったりしたら、問題があります。

例えば、これは2つの別々のネットワークです。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        ネットワーク1
  </BoxAnnotation>

<BoxAnnotation color="#5CA7CD" min="2 0 0" max="3 2 2">
        ネットワーク2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

これも2つの別々のネットワークです。<ItemLink id="quartz_fiber" /> は[エネルギー](../ae2-mechanics/energy.md)を共有しますが、
ネットワークの接続は与えないからです。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        ネットワーク1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="1.3 0 0" max="3 2 2">
        ネットワーク2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

一方、これは2つの別々のネットワークではなく、1つのネットワークです。[量子ブリッジ](../items-blocks-machines/quantum_bridge.md)は
ワイヤレスの[高密度ケーブル](../items-blocks-machines/cables.md#dense-cable)のように働くので、両端は同じネットワークにあります。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="7 3 3">
        全部で1つのネットワーク
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

これも1つのネットワークです。[ケーブル](../items-blocks-machines/cables.md)の色は、違う色のケーブルどうしがつながらないこと以外は、
ネットワークの接続とは何の関係もありません。どの色もフルーシュ(「無色」)のケーブルにはつながります。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        全部で1つのネットワーク
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## サブネットでの接続

[サブネットワーク](../ae2-mechanics/subnetworks.md)は、ネットワークの接続(特に、つながって**いない**こと)を利用して、
どの[デバイス](../ae2-mechanics/devices.md)がどのデバイスにアクセスできるかを制限します。

サブネットは、実のところ、ただの別のネットワークです。

例えば、[自動鉱石幸運化装置](../example-setups/ore-fortuner.md)を見てみましょう。ここには3つの別々のネットワークがあり、
それぞれが仕組みの中で特定の役割を果たしています。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 2" max="3 1 3">
        ネットワーク1。パイプのサブネットのように働き、インポートバスがアクセスできるものを制限して、鉱石ブロックを
        形成プレーンを通して「保管」させます。
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="0 0 0" max="3 1 1">
        ネットワーク2。別のパイプのサブネットのように働き、消滅プレーンがアクセスできるものを制限して、
        幸運で増えた鉱石のかけらをメインのネットワークではなく樽に保管させます。メインのネットワークのチャンネルも
        使いません。
  </BoxAnnotation>

  <BoxAnnotation color="#82CD5C" min="2 0 1" max="4 1 2">
        ネットワーク3。全てのストレージとクラフトがあるメインのネットワーク。実際は電力を供給するためだけにここにあり、
        2つのサブネットとは*つながっていません*。
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## P2P での接続

[P2P トンネル](../items-blocks-machines/p2p_tunnels.md)の1つの種類は、アイテム・液体・レッドストーン信号ではなく[チャンネル](channels.md)を運びます。
なぜかこれがよく混乱を招きます。トンネルを付けたネットワークと、トンネルが運ぶネットワークは
何の関係もありません。同じネットワークに*できます*が、そうである必要はなく、普通は違います。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels_network_connection.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 1">
        ネットワーク1。運ばれるネットワーク(普通はメインのネットワーク)
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="3.98 1 1">
        ネットワーク2。ME P2P トンネルを動かすネットワーク(普通はメインのネットワーク*ではない*)
  </BoxAnnotation>

  <BoxAnnotation color="#915dcd" min="4.02 0 0" max="6 1 1">
        ネットワーク1。運ばれるネットワーク(普通はメインのネットワーク)
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## わかりにくい接続

この場合は1つのネットワークです。フルブロックのデバイスである <ItemLink id="pattern_provider" /> はケーブルのように働き、
<ItemLink id="inscriber" /> も同じだからです。そのため、ネットワークの接続はプロバイダーと刻印機を
通り抜けます。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        全部で1つのネットワーク
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

これを防ぐには([サブネットワーク](../ae2-mechanics/subnetworks.md)を使う多くの自動クラフトの仕組みで役立ちます)、
プロバイダーを <ItemLink id="certus_quartz_wrench" /> で右クリックして方向指定にします。そうすると、
1つの面ではチャンネルを通さなくなります。

<Row gap="40">
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 2">
        ネットワーク1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="4 2 2">
        ネットワーク2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_directional_connection.snbt" />

  <BoxAnnotation color="#ee3333" min="1 .3 .3" max="1.3 .7 .7">
        ケーブルがつながっていないことに注目
  </BoxAnnotation>

  <IsometricCamera yaw="255" pitch="30" />
</GameScene>
</Row>

他にも、向きのあるネットワークの接続を与えない部品として、<ItemLink id="import_bus" />・<ItemLink id="storage_bus" />・
<ItemLink id="cable_interface" /> などの、ほとんどの[部品](../ae2-mechanics/cable-subparts.md)の
[デバイス](../ae2-mechanics/devices.md)があります。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/subpart_no_connection.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
