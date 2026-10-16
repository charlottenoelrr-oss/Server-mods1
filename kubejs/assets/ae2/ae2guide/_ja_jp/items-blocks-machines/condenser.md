---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 物質凝縮機
  icon: condenser
  position: 310
categories:
- machines
item_ids:
- ae2:condenser
---

# 物質凝縮機

<BlockImage id="condenser" scale="8" />

物質凝縮機は、ゴミ箱として、または <ItemLink id="matter_ball" /> や[特異点](singularities.md)を作るのに使えます。
ストレージセルに保管できるアイテムや液体などは何でも受け取れます。

## 設定とレシピ

*   ゴミ箱モードでは、物質凝縮機は入ってきたものを全て消すだけです
*   物質の玉モードでは、入れたものから <ItemLink id="matter_ball" /> を作ります。
    このモードでは、凝縮機の上のスロットにストレージ部品を入れる必要があります。物質の玉は1つあたり 256 個(または 256 バケツ)
    なので、<ItemLink id="cell_component_1k" />(容量 8192 ビット)で十分です。
*   物質の特異点モードでは、入れたものから[特異点](singularities.md)を作ります。
    このモードでは、凝縮機の上のスロットにストレージ部品を入れる必要があります。特異点は1つあたり 256,000 個(または 256,000 バケツ)
    なので、<ItemLink id="cell_component_64k" />(容量 524,288 ビット)で十分です。

何かを作る後の2つのモードでは、エネルギーと出力のアイテムの蓄えが両方いっぱいになると、物質凝縮機は*詰まって*
それ以上受け取らなくなることに注意してください。

## レシピ

<RecipeFor id="condenser" />
