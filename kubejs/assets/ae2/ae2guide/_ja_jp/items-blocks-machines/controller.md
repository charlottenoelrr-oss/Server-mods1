---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEコントローラー
  icon: controller
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:controller
---

# MEコントローラー

<BlockImage id="controller" p:state="online" scale="8" />

コントローラーは [ME ネットワーク](../ae2-mechanics/me-network-connections.md)の配線の中枢です。
これが無いネットワークは「コントローラー無し」となり、チャンネルを使う[デバイス](../ae2-mechanics/devices.md)を全部で8個までしか持てません。

1つの [ME ネットワーク](../ae2-mechanics/me-network-connections.md)にコントローラーを2つ置くことはできません。

コントローラーは1つの面あたり32の[チャンネル](../ae2-mechanics/channels.md)を出します。

コントローラーが動くには、コントローラーのブロック1個あたり 6 AE/t が必要です。各ブロックは 8000 AE を蓄えられますが、
大きなネットワークでは追加のエネルギーの蓄えが必要になるかもしれません。詳しくは[エネルギー](../ae2-mechanics/energy.md)を見てください。

複数ブロックのコントローラーは、かなり自由な形で作れます。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controllers.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ただし、守るべき決まりがいくつかあります:

1.  [ME ネットワーク](../ae2-mechanics/me-network-connections.md)のコントローラーのブロックは全てつながっている必要があります。そうでないとブロックが赤くなります。
2.  コントローラーの大きさは 7x7x7 以内である必要があります。そうでないと赤くなります。
3.  コントローラーのブロックが隣り合うブロックを2つ持てるのは、多くても1つの軸の方向だけです。この決まりを破ったブロックは止まって赤くなります。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controller_rules.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

決まりを全て守り、電力があれば、コントローラーは光って色が移り変わります。

コントローラーを右クリックすると、<ItemLink id="network_tool" /> と同じ GUI が開きます

## レシピ

<RecipeFor id="controller" />
