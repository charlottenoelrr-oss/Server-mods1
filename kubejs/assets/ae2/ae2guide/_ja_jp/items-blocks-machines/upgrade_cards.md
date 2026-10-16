---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: アップグレードカード
  icon: speed_card
  position: 410
categories:
- tools
item_ids:
- ae2:basic_card
- ae2:advanced_card
- ae2:redstone_card
- ae2:capacity_card
- ae2:void_card
- ae2:fuzzy_card
- ae2:speed_card
- ae2:inverter_card
- ae2:crafting_card
- ae2:equal_distribution_card
- ae2:energy_card
---

# アップグレードカード

<Row>
  <ItemImage id="redstone_card" scale="2" />

  <ItemImage id="capacity_card" scale="2" />

  <ItemImage id="void_card" scale="2" />

  <ItemImage id="fuzzy_card" scale="2" />

  <ItemImage id="speed_card" scale="2" />

  <ItemImage id="inverter_card" scale="2" />

  <ItemImage id="crafting_card" scale="2" />

  <ItemImage id="equal_distribution_card" scale="2" />

  <ItemImage id="energy_card" scale="2" />
</Row>

アップグレードカードは、AE2 の[デバイス](../ae2-mechanics/devices.md)や機械の動きを変え、速さを上げたり、フィルターの数を増やしたり、
レッドストーン制御を使えるようにしたりします。

## カードの部品

<Row>
  <ItemImage id="basic_card" scale="2" />

  <ItemImage id="advanced_card" scale="2" />
</Row>

カードは基本のカードか発展のカードを土台にして作ります

<Row>
  <RecipeFor id="basic_card" />

  <RecipeFor id="advanced_card" />
</Row>

## レッドストーンカード

<ItemImage id="redstone_card" scale="2" />

レッドストーンカードはレッドストーン制御を追加し、デバイスの GUI にいろいろなレッドストーンの条件を切り替えるボタンを出します。

<RecipeFor id="redstone_card" />

## 容量カード

<ItemImage id="capacity_card" scale="2" />

容量カードは、インポートバス・エクスポートバス・ストレージバス・形成プレーンのフィルターのスロットを増やします。

<RecipeFor id="capacity_card" />

## あふれ破棄カード

<ItemImage id="void_card" scale="2" />

あふれ破棄カードは <ItemLink id="cell_workbench" /> で[ストレージセル](storage_cells.md)に入れられ、
セルがいっぱいなら入ってきたアイテムを消します。(セルは必ず[区分け](cell_workbench.md)してください!) 均等分配カードと組み合わせると、
他のアイテムの区画が空いていても、そのアイテムの区画がいっぱいならアイテムが消されます。

<RecipeFor id="void_card" />

## あいまいカード

<ItemImage id="fuzzy_card" scale="2" />

あいまいカードを使うと、フィルターのあるデバイスや道具で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます。
損傷の度合いやエンチャントに関係なく鉄の斧を全て搬出したり、完全に修理したものではなく損傷したダイヤモンドの剣だけを搬出したりできます。

あいまいな損傷の比較のモードがどう働くかの例を示します。左側はバスの設定、
上は比べるアイテムです。

| 25%                    | 10% 損傷のツルハシ | 30% 損傷のツルハシ | 80% 損傷のツルハシ | 完全に修理したツルハシ |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 壊れかけのツルハシ  | ✅                   | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            |
| 完全に修理したツルハシ | \*\*\*\*            | ✅                   | ✅                   | ✅                   |

| 50%                    | 10% 損傷のツルハシ | 30% 損傷のツルハシ | 80% 損傷のツルハシ | 完全に修理したツルハシ |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 壊れかけのツルハシ  | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| 完全に修理したツルハシ | \*\*\*\*            | \*\*\*\*            | ✅                   | ✅                   |

| 75%                    | 10% 損傷のツルハシ | 30% 損傷のツルハシ | 80% 損傷のツルハシ | 完全に修理したツルハシ |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 壊れかけのツルハシ  | ✅                   | ✅                   | \*\*\*\*            | \*\*\*\*            |
| 完全に修理したツルハシ | \*\*\*\*            |                     | ✅                   | ✅                   |

| 99%                    | 10% 損傷のツルハシ | 30% 損傷のツルハシ | 80% 損傷のツルハシ | 完全に修理したツルハシ |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 壊れかけのツルハシ  | ✅                   | ✅                   | ✅                   | \*\*\*\*            |
| 完全に修理したツルハシ | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            | ✅                   |

| 無視                 | 10% 損傷のツルハシ | 30% 損傷のツルハシ | 80% 損傷のツルハシ | 完全に修理したツルハシ |
| ---------------------- | ------------------- | ------------------- | ------------------- | ------------------- |
| 壊れかけのツルハシ  | ✅                   | ✅                   | ✅                   | **✅**               |
| 完全に修理したツルハシ | **✅**               | **✅**               | **✅**               | ✅                   |

<RecipeFor id="fuzzy_card" />

## 加速カード

<ItemImage id="speed_card" scale="2" />

加速カードはものを速くします。インポートバスやエクスポートバスが1回に運ぶアイテムを増やし、刻印機や
組立機の作業を速めます。

<RecipeFor id="speed_card" />

## 反転カード

<ItemImage id="inverter_card" scale="2" />

反転カードは、デバイスや道具のフィルターを許可リストから拒否リストに切り替えます。

<RecipeFor id="inverter_card" />

## クラフトカード

<ItemImage id="crafting_card" scale="2" />

クラフトカードを使うと、デバイスが欲しいアイテムを手に入れるために[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
クラフトを依頼できます。

<RecipeFor id="crafting_card" />

## 均等分配カード

<ItemImage id="equal_distribution_card" scale="2" />

均等分配カードは <ItemLink id="cell_workbench" /> で[ストレージセル](storage_cells.md)に入れられ、
カードを[区分け](cell_workbench.md)した内容に応じて、セルを同じ大きさの区画に分けます。これで1種類のアイテムがセルを
埋め尽くすのを防げます。

<RecipeFor id="equal_distribution_card" />

## エネルギーカード

<ItemImage id="energy_card" scale="2" />

エネルギーカードは、携帯ターミナルなど一部の道具のエネルギーの蓄えを増やし、<ItemLink id="vibration_chamber" /> の
効率を上げます。

<RecipeFor id="energy_card" />
