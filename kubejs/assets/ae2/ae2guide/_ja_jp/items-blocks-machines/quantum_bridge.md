---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 量子ネットワークブリッジ
  icon: quantum_ring
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:quantum_link
- ae2:quantum_ring
---

# 量子ネットワークブリッジ

![完成した量子ネットワークブリッジ](../assets/diagrams/quantum_bridge_demonstration.png)

量子ネットワークブリッジは、[ネットワーク](../ae2-mechanics/me-network-connections.md)を無限の距離、さらにはディメンションをまたいで広げられます。
運べるのは合計で32チャンネル(各面へのケーブルのつなぎ方に関係なく)で、要するに無線の
[高密度ケーブル](cables.md#dense-cable)のように働きます。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/quantum_bridge_internal_structure_2.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="6 2 3">
        両端の間にある想像上のケーブル
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

なお、**両側ともチャンクが読み込まれている必要がある**ので、2つが遠く離れているなら <ItemLink id="spatial_anchor" /> などの
チャンクローダーを使う必要があります。

# 量子リング

<BlockImage id="quantum_ring" scale="8" />

このブロック8個を <ItemLink id="quantum_link" /> の周りに置くと、
量子ネットワークブリッジができます。ネットワークにつながるのは <ItemLink id="quantum_link" /> に隣り合う
4つの <ItemLink id="quantum_ring" /> だけで、4つの角のブロックはケーブルにつながりません。

## レシピ

<RecipeFor id="quantum_ring" />

# 量子リンクチェンバー

<BlockImage id="quantum_link" scale="8" />

このブロック1個を <ItemLink id="quantum_ring" /> で囲むと、量子ネットワークブリッジができます。このブロックはケーブルにつながらず、
ブリッジが完成したときだけネットワークの一部として扱われます。

このブロックの入れ物には <ItemLink id="quantum_entangled_singularity" /> を1つだけ入れられ、
自動化で出し入れできます。

## レシピ

<RecipeFor id="quantum_link" />
