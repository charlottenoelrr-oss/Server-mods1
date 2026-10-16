---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEエクスポートバス
  icon: export_bus
  position: 220
categories:
- devices
item_ids:
- ae2:export_bus
---

# MEエクスポートバス

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/export_bus.snbt" />
</GameScene>

エクスポートバスは、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)からアイテムや液体(アドオンがあれば他のものも)を取り出し、
触れている入れ物に入れます。

負荷を減らすため、エクスポートバスはしばらく何も搬出していないと「休止状態」のようになってゆっくり動き、
何かの搬出に成功すると目覚めて全速(1秒に4回)まで速くなります。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

## 絞り込み

初期状態では、バスは何も搬出しません。フィルターのスロットに入れたアイテムは許可リストとして働き、
そのアイテムを搬出できるようになります。

アイテムや液体は、実際に持っていなくても JEI/REI からスロットにドラッグできます。

液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体をフィルターに設定します。

## アップグレード

エクスポートバスは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="capacity_card" /> はフィルターのスロットを増やし、絞り込んだものをどの順で搬出するかの設定を出します。
*   <ItemLink id="speed_card" /> は1回に運ぶ量を増やします
*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます
*   <ItemLink id="crafting_card" /> で、欲しいアイテムを手に入れるために[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
    クラフトを依頼できます。できればストレージから取り出すか、常に新しくクラフトを依頼するかを設定できます。
*   <ItemLink id="redstone_card" /> でレッドストーン制御を追加し、信号が強いとき・弱いとき・パルスごとに1回、で動かせます

## 速さ

| 加速カード | 1回に運ぶアイテム |
|:-------------------|:--------------------------|
| 0                  | 1                         |
| 1                  | 8                         |
| 2                  | 32                        |
| 3                  | 64                        |
| 4                  | 96                        |

## レシピ

<RecipeFor id="import_bus" />
