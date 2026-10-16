---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 刻印機
  icon: inscriber
  position: 310
categories:
- machines
item_ids:
- ae2:inscriber
---

# 刻印機

<BlockImage id="inscriber" scale="8" />

刻印機は、[金型](presses.md)を使って回路や[プロセッサ](processors.md)を刻印したり、いろいろなアイテムを砕いて粉にしたりするのに使います。
AE2 の電力(AE)と Fabric/Forge Energy(E/FE)のどちらも受け取れます。面ごとに働きを分けられ、違う面から入れたアイテムは
入れ物の違うスロットに入ります。そのために <ItemLink id="certus_quartz_wrench" /> で回転できます。
クラフトの完成品を隣の入れ物に送り出す設定もできます。

入力の蓄えの大きさは調整できます。例えば、1つの入れ物からたくさん並べた刻印機に送るなら、蓄えを小さくすると
材料が刻印機の間でうまく振り分けられます(最初の刻印機が64個まで埋まって残りが空になる、ということがなくなります)。

4つの回路の金型は[プロセッサ](processors.md)を作るのに使います

<Row>
  <ItemImage id="silicon_press" scale="4" />

  <ItemImage id="logic_processor_press" scale="4" />

  <ItemImage id="calculation_processor_press" scale="4" />

  <ItemImage id="engineering_processor_press" scale="4" />
</Row>

一方、名前の金型は金床のようにブロックに名前を付けるのに使え、<ItemLink id="pattern_access_terminal" /> での見分けに便利です。

<ItemImage id="name_press" scale="4" />

## 設定

* 刻印機は、面ごとに働きを分ける(下で説明)か、どの面からでもどのスロットにでも入れられるようにし、中のフィルターで
    どこに入るかを決めるかを設定できます。面を分けないモードでは、上と下のスロットからアイテムを取り出せません。
* 刻印機は、アイテムを隣の入れ物に送り出すように設定できます。
* 入力の蓄えの大きさを調整できます。大きい方は手で入れる単体の刻印機用、
小さい方は大きな並列の仕組みを作りやすくするためのものです。

## GUI と面の働き

面ごとに働きを分けるモードでは、刻印機はどの面から入れたり取り出したりするかで、どこに入るかを絞り込みます。

![刻印機の GUI](../assets/diagrams/inscriber_gui.png) ![刻印機の面](../assets/diagrams/inscriber_sides.png)

A. **上の入力** 刻印機の上の面から使います(このスロットにはアイテムを入れることも取り出すこともできます)

B. **中央の入力** 刻印機の左・右・前・後ろの面から入れます(このスロットにはアイテムを入れられるだけで、取り出せません)

C. **下の入力** 刻印機の下の面から使います(このスロットにはアイテムを入れることも取り出すこともできます)

D. **出力** 刻印機の左・右・前・後ろの面から取り出します(このスロットからはアイテムを取り出せるだけで、入れられません)

## 簡単な自動化

例えば、面ごとの働きと回転できることを使えば、刻印機をこのように半自動化できます:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/inscriber_hopper_automation.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

または、面を分けないモードにして、刻印機にパイプで入れたり出したりするだけでもかまいません。

## アップグレード

刻印機は次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="speed_card" />

## レシピ

<RecipeFor id="inscriber" />
