---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEチェスト
  icon: chest
  position: 210
categories:
- devices
item_ids:
- ae2:chest
---

# MEチェスト

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/chest.snbt" />
</GameScene>

MEチェストは、<ItemLink id="terminal" />・<ItemLink id="drive" />・<ItemLink id="energy_acceptor" /> を備えた小さなネットワークのように働きます。
小さな保管用ネットワークとしても使えますが、[ストレージセル](../items-blocks-machines/storage_cells.md)が1つしか入らないので、
その用途では使い道が限られます。

むしろ、中に入れたストレージセルだけを扱うのに便利です。内蔵のターミナルは入れたセルの中のアイテムしか見たり
使ったりできませんが、ネットワーク全体の[デバイス](../ae2-mechanics/devices.md)は MEチェストを含むどの[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)の
アイテムでも使えます。

GUI が2つあり、アイテムの搬送は面によって違います。上のターミナルを操作すると内蔵のターミナルが開きます。この面からは
入れたストレージセルにアイテムを入れられますが、取り出せません。他の面を操作すると、ストレージセルのスロットと
優先度の設定がある GUI が開きます。アイテム物流でセルを出し入れできるのは、セルのスロットがある面からだけです。

<ItemLink id="certus_quartz_wrench" /> で回転できます。

AE エネルギーの蓄えが少ないので、[エネルギーセル](../items-blocks-machines/energy_cells.md)のあるネットワークにつないでいないと、
一度にたくさんのアイテムを出し入れしたときに電力不足になることがあります。

ターミナルは <ItemLink id="color_applicator" /> で色を付けられます。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/chest_color.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

MEチェストには、<ItemLink id="terminal" /> や <ItemLink id="crafting_terminal" /> と同じ設定が全てあります。
ただし、<ItemLink id="view_cell" /> には対応していません。

## セルの状態ランプ

チェストの中のセルには状態を示すランプがあります:

| 色  | 状態                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| 緑  | 空                                                                            |
| 青   | 中身がある                                                                |
| 橙 | [種類](../ae2-mechanics/bytes-and-types.md)がいっぱいで、新しい種類を入れられない     |
| 赤    | [バイト](../ae2-mechanics/bytes-and-types.md)がいっぱいで、これ以上アイテムを入れられない |
| 黒  | 電力が無いか、ドライブに[チャンネル](../ae2-mechanics/channels.md)が無い                 |

## 優先度

優先度は、セルのスロットの GUI の右上にあるレンチを押して設定します。
ネットワークに入るアイテムは、まず優先度の一番高いストレージを行き先にします。2つのストレージやセルの優先度が同じなら、
すでにそのアイテムが入っている方を優先します。[区分け](cell_workbench.md)したセルは、同じ優先度のグループの中では
すでにそのアイテムが入っているものとして扱われます。ストレージから取り出すアイテムは、優先度の一番低いストレージから
取り出されます。この優先度の仕組みにより、ネットワークのストレージにアイテムが出入りするにつれて、優先度の高いストレージが埋まり、
優先度の低いストレージが空いていきます。

## レシピ

<RecipeFor id="chest" />
