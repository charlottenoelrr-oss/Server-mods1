---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 芽生えたケルタスクォーツ
  icon: flawless_budding_quartz
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:flawless_budding_quartz
- ae2:flawed_budding_quartz
- ae2:chipped_budding_quartz
- ae2:damaged_budding_quartz
- ae2:small_quartz_bud
- ae2:medium_quartz_bud
- ae2:large_quartz_bud
- ae2:quartz_cluster
---

# 芽生えたケルタスクォーツ

([ケルタスの成長](../ae2-mechanics/certus-growth.md)も見てください)

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ケルタスクォーツの芽は、アメジストと同じように芽生えたケルタスのブロックから生えます。これは[隕石](../ae2-mechanics/meteorites.md)で見つかります。
芽生えたケルタスのブロックには4つの段階があります: 完璧、欠けた、傷ついた、壊れかけ。HWYLA・Jade・The One Probe などのMOD
(または F3 画面)を使うと一番簡単に見分けられます。

欠けた・傷ついた・壊れかけの芽生えたケルタスは、芽が1段階育つたびに一定の確率で1段階劣化し、
最後にはただの <ItemLink id="quartz_block" /> になります。

完璧な芽生えたケルタスは芽が育っても劣化せず、無限の供給源になります。

普通のツルハシで壊すと、芽生えたケルタスのブロックは1段階劣化します。シルクタッチ付きのツルハシで壊すと、
完璧なもの以外は劣化しません。**つまり、完璧な芽生えたケルタスのブロックはツルハシで回収して動かすことができません**。代わりに、
[空間ストレージ](../ae2-mechanics/spatial-io.md)で完璧な芽生えたブロックを切り取って貼り付けられます。

## レシピ

欠けた・傷ついた・壊れかけの芽生えたケルタスは、1つ前の段階の芽生えたブロック(または <ItemLink id="quartz_block" />)を
<ItemLink id="charged_certus_quartz_crystal" /> 1個以上と一緒に水に投げ込むと作れます。

完璧な芽生えたケルタスはクラフトできず、ワールドで見つけるしかありません。

<Row>
  <RecipeFor id="damaged_budding_quartz" />

  <RecipeFor id="chipped_budding_quartz" />

  <RecipeFor id="flawed_budding_quartz" />
</Row>
