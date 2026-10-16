---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEインポートバス
  icon: import_bus
  position: 220
categories:
- devices
item_ids:
- ae2:import_bus
---

# MEインポートバス

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/import_bus.snbt" />
</GameScene>

インポートバスは、触れている入れ物からアイテムや液体(アドオンがあれば他のものも)を取り出し、
[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に入れます。

負荷を減らすため、インポートバスはしばらく何も搬入していないと「休止状態」のようになってゆっくり動き、
何かの搬入に成功すると目覚めて全速(1秒に4回)まで速くなります。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

## 絞り込み

初期状態では、バスはアクセスできるものを何でも搬入します。フィルターのスロットに入れたアイテムは許可リストとして働き、
そのアイテムだけを搬入するようになります。

アイテムや液体は、実際に持っていなくても JEI/REI からスロットにドラッグできます。

液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体をフィルターに設定します。

## アップグレード

インポートバスは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="capacity_card" /> はフィルターのスロットを増やします
*   <ItemLink id="speed_card" /> は1回に運ぶ量を増やします
*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます
*   <ItemLink id="inverter_card" /> でフィルターを許可リストから拒否リストに切り替えます
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
