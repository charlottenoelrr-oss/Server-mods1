---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: ケルタスクォーツの成長
  icon: quartz_cluster
---

# ケルタスクォーツの成長

## ほとんど「はじめに」のページからのコピーです

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/budding_certus_1.snbt" />
</GameScene>

ケルタスクォーツの芽は、アメジストと同じように[芽生えたケルタスクォーツ](../items-blocks-machines/budding_certus.md)から生えます。育ちきっていない芽を壊すと、
<ItemLink id="certus_quartz_dust" /> が1個落ち、幸運の影響は受けません。育ちきった塊を壊すと
<ItemLink id="certus_quartz_crystal" /> が4個落ち、幸運で数が増えます。

芽生えたケルタスクォーツには4つの段階があります: 完璧、傷ついた、欠けた、壊れかけ。最初は
[隕石](../ae2-mechanics/meteorites.md)の中で見つかります。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

芽が1段階育つたびに、芽生えたブロックは一定の確率で1段階劣化し、最後には
ただのケルタスクォーツブロックになります。芽生えたブロック(またはケルタスクォーツブロック)を
<ItemLink id="charged_certus_quartz_crystal" /> 1個以上と一緒に水に投げ込むと、修復(や新しい芽生えたブロックの作成)ができます。

<RecipeFor id="damaged_budding_quartz" />

完璧な芽生えたケルタスクォーツは劣化せず、ケルタスクォーツを無限に生みます。ただし、クラフトできず、ツルハシでは
シルクタッチがあっても動かせません。(ただし[空間ストレージ](../ae2-mechanics/spatial-io.md)なら*動かせます*)

ケルタスクォーツの芽は、そのままではとてもゆっくりしか育ちません。幸い、<ItemLink id="growth_accelerator" /> を芽生えたブロックの隣に置くと、
これを大きく速められます。まず最優先でいくつか作りましょう。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_certus_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

複雑な相互作用により、芽生えたブロックの面がふさがるほど、そのブロックからの成長速度の合計が遅くなり、
やがて加速器を増やす効果を上回ります。実際に試した結果は次のとおりです:

![Items/min for ratios](../assets/diagrams/certus_farm_speed_chart_1.png)

![common setups](../assets/diagrams/certus_farm_speed_chart_2.png)

<ItemLink id="energy_acceptor" /> や <ItemLink id="vibration_chamber" /> も作れるほどのクォーツが無ければ、
<ItemLink id="crank" /> を作って加速器の端に付けましょう。

ケルタスクォーツの自動収穫は[ここで説明しています](../example-setups/simple-certus-farm.md)。
