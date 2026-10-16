---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: パターン
  icon: crafting_pattern
  position: 410
categories:
- tools
item_ids:
- ae2:blank_pattern
- ae2:crafting_pattern
- ae2:processing_pattern
- ae2:smithing_table_pattern
- ae2:stonecutting_pattern
---

# パターン

<ItemImage id="crafting_pattern" scale="4" />

パターンは <ItemLink id="pattern_encoding_terminal" /> で空のパターンから作り、<ItemLink id="pattern_provider" /> や
<ItemLink id="molecular_assembler" /> に入れます。

用途に応じていくつかの種類のパターンがあります:

*   <ItemLink id="crafting_pattern" /> は作業台で作るレシピを記録します。<ItemLink id="molecular_assembler" /> に直接入れると、
    材料を与えるたびに完成品をクラフトさせられますが、主な使い方は分子組立機の隣の <ItemLink id="pattern_provider" /> に入れることです。
    この場合パターンプロバイダーは特別な動きをし、材料と一緒に該当するパターンを隣の組立機に送ります。
    組立機はクラフトの完成品を隣の入れ物に自動で送り出すので、パターンプロバイダーに組立機を付けるだけでクラフトパターンを自動化できます。

***

*   <ItemLink id="smithing_table_pattern" /> はクラフトパターンとほぼ同じですが、鍛冶台のレシピを記録します。これもパターン
    プロバイダーと分子組立機で自動化し、まったく同じように働きます。実際、クラフト・鍛冶・石切りのパターンは
    同じ仕組みで使えます。

***

*   <ItemLink id="stonecutting_pattern" /> はクラフトパターンとほぼ同じですが、石切台のレシピを記録します。これもパターン
    プロバイダーと分子組立機で自動化し、まったく同じように働きます。実際、クラフト・鍛冶・石切りのパターンは
    同じ仕組みで使えます。

***

*   <ItemLink id="processing_pattern" /> は、自動クラフトの柔軟さの多くを生むものです。最も汎用的な種類で、単に
    「パターンプロバイダーがこの材料を隣の入れ物に送れば、ME システムは近いうちか遠い将来のどこかでこのアイテムを受け取る」
    ということを表します。ほとんどのMODの機械やかまどなどで自動クラフトするのはこれを使います。用途がとても汎用的で、
    材料を送ってから完成品を受け取るまでに何が起こるかを気にしないので、かなり変わったこともできます。例えば、
    材料を巨大で複雑な工場の生産ラインに入れて、ものを仕分けし、無限に生産する農場から別の材料を受け取り、
    映画『ビー・ムービー』の台本を丸ごと印刷しても、パターンの決めた完成品が届きさえすれば ME システムは気にしません。実際、
    材料が完成品と何の関係もなくてもかまいません。「サクラの板材1個 = ネザースター1個」と教えて、
    サクラの板材を受け取ったらウィザートラップがウィザーを倒すようにしても、ちゃんと動きます。

同じパターンを入れた複数の <ItemLink id="pattern_provider" /> にも対応していて、並行して動きます。さらに、パターンを
「丸石1個 = 石1個」ではなく「丸石8個 = 石8個」のようにすると、パターンプロバイダーは1回の処理で
1個ずつではなく丸石8個を精錬の仕組みに入れます。

## レシピ

<RecipeFor id="blank_pattern" />
