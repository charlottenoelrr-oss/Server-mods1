---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: P2Pトンネル
  icon: me_p2p_tunnel
  position: 210
categories:
- devices
item_ids:
- ae2:me_p2p_tunnel
- ae2:redstone_p2p_tunnel
- ae2:item_p2p_tunnel
- ae2:fluid_p2p_tunnel
- ae2:fe_p2p_tunnel
- ae2:light_p2p_tunnel
---

# P2Pトンネル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

P2P トンネルは、アイテム・液体・レッドストーン信号・電力・光・[チャンネル](../ae2-mechanics/channels.md)などを、
ネットワークと直接やりとりさせずにネットワークの中で運ぶ方法です。P2P トンネルにはたくさんの種類がありますが、それぞれ
決まった種類のものしか運びません。要するに、離れた2つのブロックの面を直接つなぐポータルのように働きます。
双方向ではなく、入力と出力が決まっています。

![ポータル](../assets/assemblies/p2p_portal.png)

例えば、アイテム P2P に向けたホッパーは樽に直接つながっているかのように働き、アイテムが流れます。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_hopper_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ただし、隣り合った2つの樽どうしではアイテムは運ばれません。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_barrel_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

レッドストーン P2P のような他の種類もあります。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_redstone.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

チャンネルを運ぶ ME P2P もあります。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## P2P トンネルの種類と切り替え

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="180" pitch="90" />
</GameScene>

P2P トンネルにはたくさんの種類があります。直接クラフトできるのは ME P2P トンネルだけで、他は P2P トンネルを特定のアイテムで
右クリックして作ります:
- ME P2P トンネルは、どれかの[ケーブル](../items-blocks-machines/cables.md)で右クリックします。
- レッドストーン P2P トンネルは、いろいろなレッドストーンの部品で右クリックします。
- アイテム P2P トンネルは、チェストかホッパーで右クリックします。
- 液体 P2P トンネルは、バケツか瓶で右クリックします。
- エネルギー P2P トンネルは、エネルギーを持つほとんどのアイテムで右クリックします。
- 光 P2P トンネルは、松明かグロウストーンで右クリックします

種類によっては癖があります。例えば、ME P2P トンネルのチャンネルは他の ME P2P トンネルを通れません。また、
エネルギー P2P トンネルは[エネルギー](../ae2-mechanics/energy.md)の消費を増やすことで、通る FE の 2.5% を間接的に手数料として取ります。

## 一番よく使う P2P の形

P2P トンネルの一番よくある使い方は、ME P2P トンネルで[チャンネル](../ae2-mechanics/channels.md)の運び方を密にすることです。
高密度ケーブルの束の代わりに、1本の高密度ケーブルでたくさんのチャンネルを運べます。

この例では、8つの ME P2P の入力がメインのネットワークの <ItemLink id="controller" /> から256チャンネル(8×32)を受け取り、8つの ME P2P の出力が
別の場所に出します。P2P トンネルの入力と出力がそれぞれ1チャンネルを使うことに注目してください。こうして細いケーブルで
たくさんのチャンネルを運べます。しかも、P2P トンネルは専用の[サブネット](../ae2-mechanics/subnetworks.md)にあるので、
メインのネットワークのチャンネルを1つも使っていません! また、P2P トンネルはコントローラーに直接付けることもできますが、
間に[高密度スマートケーブル](../items-blocks-machines/cables.md#smart-cable)をはさむとチャンネルが見やすくなることにも注目してください。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/p2p_compact_channels.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 1.3 6.3" max="2 2.7 6.7">
        クォーツファイバーでメインのネットワークと P2P のサブネットの間でエネルギーを分け合う。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.1 0 5.7" max="5 2.3 6.4">
        トンネルの入力はコントローラーに直接付けても、ケーブルでつないでもよい。
  </BoxAnnotation>

  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

別の例([量子ブリッジ](quantum_bridge.md)と組み合わせた使い方を含む)は、清書する気にならなかったこのペイントの図を見てください:

![P2P と量子ブリッジ](../assets/diagrams/p2p_quantum_network.png)

## 入れ子

ただし、これで1本のケーブルに無限のチャンネルを通すことはできません。ME P2P トンネルのチャンネルは別の ME P2P トンネルを
通らないので、何重にも入れ子にはできません。赤いケーブルの外側の ME P2P トンネルがオフラインになっていることに注目してください。
これは ME P2P トンネルだけの話で、他の種類の P2P トンネルは ME P2P トンネルを通れます。レッドストーン P2P トンネルが
問題なく動いているのがわかります。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_nesting.snbt" />
  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

## つなぎ方

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_linking_frequency.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

P2P トンネルの両端は <ItemLink id="memory_card" /> でつなぎます。周波数はトンネルの裏に 2x2 の色の並びで
表示されます。
- シフト+右クリックで P2P の新しい接続周波数を作ります。
- 右クリックで設定、アップグレードカード、接続周波数を貼り付けます。

シフト+右クリックしたトンネルが入力に、右クリックしたトンネルが出力になります。出力は複数にできますが、
ME P2P トンネルでは入力に流れるチャンネルが出力の間で分けられるので、チャンネルを増やすことはできません。

## レシピ

<RecipeFor id="me_p2p_tunnel" />
