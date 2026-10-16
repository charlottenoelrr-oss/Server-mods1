---
navigation:
  title: エネルギーの蓄え
  icon: greater_energy_card
  parent: index.md
  position: 030
categories:
  - megacells
item_ids:
  - mega_energy_cell
  - greater_energy_card
---

# MEGA Cells: エネルギー

MEGA が[エネルギー](ae2:ae2-mechanics/energy.md)の蓄えの大きな版を用意しないのは手落ちというものなので、
ありがたいことにここでもそれが用意されています。

## 超高密度エネルギーセル

<BlockImage id="mega_energy_cell" scale="4" />

*超高密度エネルギーセル*は、<ItemLink id="ae2:dense_energy_cell" /> の8倍、普通の <ItemLink id="ae2:energy_cell" /> の
64倍のエネルギーを蓄え、1つで最大 1280 *万* AE になります。とりわけ大きな[空間 I/O](ae2:ae2-mechanics/spatial-io.md)の仕組みや、
膨大なエネルギーの蓄えが必要な転送の作業にぴったりで、しかもより小さなブロックの空間に収まります!

<RecipeFor id="mega_energy_cell" />

## 上級エネルギーカード

<ItemImage id="greater_energy_card" scale="3" />

さらに、超高密度エネルギーセルを使って <ItemLink id="ae2:energy_card" /> の強化版を作れます。携帯ストレージセルや
[無線ターミナル](ae2:items-blocks-machines/wireless_terminals.md)など、無線の設備にさらに大きなエネルギーの蓄えを与えます。
AE2 自体のそうしたデバイスは、普通のエネルギーカードと同じようにこれにも対応します。ただし、より電力を食う
[MEGA の携帯セル](storage.md#portable-cells)は、電池の容量を増やすのに上級エネルギーカード*だけ*に対応します。

<RecipeFor id="greater_energy_card" />
