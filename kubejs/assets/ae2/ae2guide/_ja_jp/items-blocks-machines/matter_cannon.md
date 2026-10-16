---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 物質キャノン
  icon: matter_cannon
  position: 410
categories:
- tools
item_ids:
- ae2:matter_cannon
---

# 物質キャノン

<ItemImage id="matter_cannon" scale="4" />

物質キャノンは持ち運べるレールガンで、<ItemLink id="matter_ball" /> や金属の塊のような小さなアイテムを弾として撃てます。ダメージは
撃つアイテムで決まり、金の塊(10 ダメージ)のような「重い」アイテムの方が、物質の玉(2 ダメージ)のような軽いアイテムより大きなダメージを与えます。
1発あたり基本で 1600 AE を使います。

設定の「matterCannonBlockDamage」が true なら、キャノンはブロックの硬さと弾のダメージに応じてブロックを壊します。

エネルギーは <ItemLink id="charger" /> で充電できます。

物質キャノンは[ストレージセル](storage_cells.md)のように働き、弾倉は、<ItemLink id="chest" /> のストレージセルのスロットに
キャノンを入れて満たすのが一番簡単です

## アップグレード

物質キャノンは次の[アップグレード](upgrade_cards.md)に対応し、<ItemLink id="cell_workbench" /> で入れます:

*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで区分けしたり、アイテムの NBT を無視したりできます
*   <ItemLink id="inverter_card" /> でフィルターを許可リストから拒否リストに切り替えます
*   <ItemLink id="speed_card" /> は1発に使うエネルギーを増やし、より強く撃てるようにします。
*   <ItemLink id="void_card" /> は、セルがいっぱいのときに入れたアイテムを消します。必ず区分けしてください!
*   <ItemLink id="energy_card" /> で電池の容量を増やせます

## レシピ

<RecipeFor id="matter_cannon" />
