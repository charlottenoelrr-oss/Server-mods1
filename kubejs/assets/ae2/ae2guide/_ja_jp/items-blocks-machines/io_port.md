---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ME入出力ポート
  icon: io_port
  position: 210
categories:
- devices
item_ids:
- ae2:io_port
---

# ME入出力ポート

<BlockImage id="io_port" p:powered="true" scale="8" />

入出力ポートを使うと、[ストレージセル](../items-blocks-machines/storage_cells.md)と[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)の間で、
セルをすばやく満たしたり空にしたりできます。

<ItemLink id="certus_quartz_wrench" /> で回転できます。

## 設定

*   入出力ポートは、セルが空になったとき、いっぱいになったとき、または作業が終わったときに、セルを出力のスロットへ移すよう設定できます。
*   <ItemLink id="redstone_card" /> を入れると、いろいろなレッドストーンの条件を選べます
*   GUI の中央に矢印があり、アイテムを運ぶ向き(セルから[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)へ、
    またはストレージからセルへ)を設定できます。

## アップグレード

入出力ポートは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="speed_card" /> は1回に運ぶ量を増やします
*   <ItemLink id="redstone_card" /> でレッドストーン制御を追加し、信号が強いとき・弱いとき・パルスごとに1回、で動かせます

## レシピ

<RecipeFor id="io_port" />
