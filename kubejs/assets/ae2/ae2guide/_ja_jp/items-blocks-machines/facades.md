---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 外装
  icon: facade
  icon_components:
    "ae2:facade_item": "minecraft:stone"
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:facade
---

# 外装

外装を使うと、拠点をすっきり見せられます。どちらの太さのケーブルも覆えて、いろいろな種類のブロックから
作れます。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/facades_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ケーブルの全ての面を覆えますが、[部品](../ae2-mechanics/cable-subparts.md)やケーブルのつながりは
突き出たままになります。

<GameScene zoom="6"  interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

うまく使えば、拠点の見た目を良くしたり、面ごとに違うテクスチャのブロックを作ったりできます。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_3.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 外装を隠す

どちらかの手に<a href="network_tool.md">ネットワークツール</a>を持っている間は、外装が隠れます。

隠れた外装の後ろのブロックは、外装を外さなくても操作できます。

## レシピ

テクスチャにしたいブロックを、<ItemLink id="cable_anchor" /> 4個の真ん中に置きます。

![外装のレシピ](../assets/diagrams/facade_recipe.png)
