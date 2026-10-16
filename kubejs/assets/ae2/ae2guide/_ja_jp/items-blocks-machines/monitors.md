---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: モニター
  icon: storage_monitor
  position: 210
categories:
- devices
item_ids:
- ae2:storage_monitor
- ae2:conversion_monitor
---

# モニター

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/monitors.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

モニターを使うと、GUI を開かずに1種類のアイテムや液体を表示したり操作したりできます。

モニターは、付けた[ケーブル](cables.md)の色を受け継ぎます。

床や天井に付けたモニターは、<ItemLink id="certus_quartz_wrench" /> で回転できます。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

# ストレージモニター

アイテムや液体とその量を表示します。農場の隣などに置きましょう……

[チャンネル](../ae2-mechanics/channels.md)を*必要としません*。

操作:

*   アイテムを持って右クリックするか、液体の入れ物を持ってダブル右クリックすると、そのアイテム・液体をモニターに設定します。
*   素手で右クリックするとモニターを空にします。
*   素手でシフト+右クリックするとモニターをロックします。

## レシピ

<RecipeFor id="storage_monitor" />

# 変換モニター

変換モニターはストレージモニターに似ていますが、設定したアイテムを入れたり取り出したりできます。

設定したアイテムが[自動クラフト](../ae2-mechanics/autocrafting.md)でき、ストレージに1つも無いときは、取り出そうとすると
代わりにクラフトする数を指定する画面が開きます。

[チャンネル](../ae2-mechanics/channels.md)が*必要です*。

追加の操作:

*   左クリックで設定したアイテムを1スタック取り出します。ストレージに無ければ、そのアイテムのクラフトを依頼します。
*   アイテムを持って右クリックすると、そのアイテムを入れます。
*   素手で右クリックすると、インベントリにある設定したアイテムを全て入れます。

## レシピ

<RecipeFor id="conversion_monitor" />
