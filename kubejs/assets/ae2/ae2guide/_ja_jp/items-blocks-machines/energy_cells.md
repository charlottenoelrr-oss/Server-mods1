---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: エネルギーセル
  icon: energy_cell
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_cell
- ae2:dense_energy_cell
- ae2:creative_energy_cell
---

# エネルギーセル

<Row gap="20">
  <BlockImage id="energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="8" />
</Row>

エネルギーセルは、ネットワークの[エネルギー](../ae2-mechanics/energy.md)の蓄えを増やします。ある程度のエネルギーの蓄えがあると、
大量のアイテムを出し入れしたときのエネルギー消費の急な増加をならせます。蓄えがもっと多ければ、エネルギーを作っていない間
(ソーラーパネルの夜など)もネットワークを動かせ、[空間ストレージ](../ae2-mechanics/spatial-io.md)の一瞬の膨大な消費にも耐えられます。

## 量のバー

<Row>
<BlockImage id="energy_cell" scale="4" p:fullness="0" />
<BlockImage id="energy_cell" scale="4" p:fullness="1" />
<BlockImage id="energy_cell" scale="4" p:fullness="2" />
<BlockImage id="energy_cell" scale="4" p:fullness="3" />
<BlockImage id="energy_cell" scale="4" p:fullness="4" />
</Row>

セルの横のバーは、蓄えているエネルギーの量を表します。

*   25% 未満なら 0 本
*   25% 〜 50% なら 1 本
*   50% 〜 75% なら 2 本
*   75% 〜 99% なら 3 本
*   99% を超えれば 4 本

## セルの種類

*   <ItemLink id="energy_cell" /> は 200k AE を蓄えられ、ほとんどの場合1つで足ります。普通のネットワークの使い方での
    電力の急な増加は楽にこなせます。
*   <ItemLink id="dense_energy_cell" /> は 1.6M AE を蓄えられ、蓄えた電力でネットワークを動かしたいときや、
    大きな[空間ストレージ](../ae2-mechanics/spatial-io.md)の仕組みの一瞬の膨大な消費に耐えたいとき用です。
*   <ItemLink id="creative_energy_cell" /> はテスト用のクリエイティブのアイテムで、無限のパワァァァ(的なもの)を供給します。

## レシピ

<Row>
  <RecipeFor id="energy_cell" />

  <RecipeFor id="dense_energy_cell" />
</Row>
