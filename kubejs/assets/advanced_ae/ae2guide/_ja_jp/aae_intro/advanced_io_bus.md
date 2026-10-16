---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 高度な入出力バス
  icon: advanced_ae:advanced_io_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:advanced_io_bus_part
---

# 高度な入出力バス

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_advanced_io_bus.snbt"></ImportStructure>
</GameScene>

高度な入出力バスは、外部の入れ物とやりとりするとても強力な道具です。<ItemLink id="advanced_ae:import_export_bus_part"/> と
<ItemLink id="advanced_ae:stock_export_bus_part"/> を合体させて作ります。両方の親の機能を受け継ぎます。さらに、
高度な入出力バスの基本の速さは <ItemLink id="ae2:export_bus"/> の基本の速さの8倍です。全速になるまで少し時間がかかりますが、
完全に強化すると猛烈に速くなります。

## 搬出

高度な入出力バスは、フィルターに従って決まった量まで搬出し、そこで止まります。画面の左側には、
アイテムの在庫を調整するかどうかを選ぶ設定もあります。

## 搬入

高度な入出力バスは、搬出するよう絞り込んでいないものを全て搬入もします。搬入と搬出の操作は別々に数えるので、
バスがどちらか一方だけで詰まることはありません。調整する設定にしたときは、設定した量を超えているものの搬入を優先します。
操作の回数が残っていれば、絞り込んでいないものを搬入します。

<RecipeFor id="advanced_ae:advanced_io_bus_part"/>
