---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: プロセッサ
  icon: logic_processor
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:logic_processor
- ae2:calculation_processor
- ae2:engineering_processor
- ae2:printed_silicon
- ae2:printed_logic_processor
- ae2:printed_calculation_processor
- ae2:printed_engineering_processor
- ae2:silicon
---

# プロセッサ

<Row>
  <ItemImage id="logic_processor" scale="4" />

  <ItemImage id="calculation_processor" scale="4" />

  <ItemImage id="engineering_processor" scale="4" />
</Row>

プロセッサは、AE2 の[デバイス](../ae2-mechanics/devices.md)や機械の主な材料の1つです。最初の大きな自動化の課題の1つでもあります。
プロセッサには3種類あり、それぞれ金、<ItemLink id="certus_quartz_crystal" />、ダイヤモンドで作ります。
<ItemLink id="inscriber" /> で[金型](presses.md)を使い、何段階かの工程で作ります(たいていは刻印機を並べて、絞り込んだパイプでつないで作ります)。

## 作る手順

<Column gap="5">
  1.  必要な材料を集めるか作る: シリコン、レッドストーン、金、<ItemLink id="certus_quartz_crystal" />、ダイヤモンド。

  <RecipeFor id="silicon" />

  <br />

  2.  前段階の印刷回路の部品を刻印する

  <Row>
    <RecipeFor id="printed_silicon" />

    <RecipeFor id="printed_logic_processor" />
  </Row>

  <Row>
    <RecipeFor id="printed_calculation_processor" />

    <RecipeFor id="printed_engineering_processor" />
  </Row>

  <br />

  3.  最後の組み立て

  <Row>
    <RecipeFor id="logic_processor" />

    <RecipeFor id="calculation_processor" />
  </Row>

  <RecipeFor id="engineering_processor" />
</Column>
