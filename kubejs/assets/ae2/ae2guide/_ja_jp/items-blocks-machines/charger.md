---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: チャージャー
  icon: charger
  position: 310
categories:
- machines
item_ids:
- ae2:charger
---

# チャージャー

<BlockImage id="charger" scale="8" />

チャージャーでは、対応する道具と <ItemLink id="certus_quartz_crystal" /> を充電できます。

電力は上か下から、AE2 の[ケーブル](cables.md)か他のMODの電力ケーブルで送ります。AE2 の電力(AE)と
Forge Energy(FE)のどちらも受け取れます。アイテムはどの面からも出し入れできます。取り出せるのは完成品だけなので、
チャージ済みではなく普通のケルタスの結晶が取り出されないようにするフィルターは要りません。自動化しやすいよう、
<ItemLink id="certus_quartz_wrench" /> で回転できます。

<ItemLink id="certus_quartz_crystal" /> から <ItemLink id="charged_certus_quartz_crystal" /> を、
<ItemLink id="minecraft:compass" /> から <ItemLink id="meteorite_compass" /> を作れます。

手で動かすには、上か下に <ItemLink id="crank" /> を付け、アイテムが充電されるまで右クリックします。

[フルーシュ研究員](fluix_researcher.md)の職業ブロックにもなります。

## 簡単な自動化

例えば、回転できるので、チャージャーをこのように半自動化できます:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/charger_hopper.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## レシピ

<RecipeFor id="charger" />
