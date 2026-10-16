---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 振動室
  icon: vibration_chamber
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:vibration_chamber
---

# 振動室

<BlockImage id="vibration_chamber" p:active="true" scale="8" />

ネットワークに[エネルギー](../ae2-mechanics/energy.md)を送る主な方法として想定しているのは <ItemLink id="energy_acceptor" /> ですが、
振動室は少しから中くらいの量の AE を直接作れます。

初期状態([アップグレード](upgrade_cards.md)無し、初期の設定)では 40 AE/t を作ります。

ネットワークの[エネルギー](../ae2-mechanics/energy.md)の蓄えがいっぱいになると、振動室は燃料を節約するため出力を落としますが、
完全には止まりません。

## 設定

*   振動室から、エネルギーを AE で表示するか E/FE で表示するかの全体の設定を変えられます。

## アップグレード

振動室は次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="energy_card" /> は効率を +50% ずつ、最大 +150%(基本の効率の 250%)まで上げます。
*   <ItemLink id="speed_card" /> は燃焼の速さを +50% ずつ、最大 +150%(基本の出力の 250%)まで上げます。

## 設定ファイル

振動室の性質は、.minecraft\ フォルダの config フォルダの中の ae2 フォルダにある common.json で変えられます。

*   baseEnergyPerFuelTick は、アップグレード無しの振動室の基本の効率を決めます。
*   minEnergyPerGameTick は、最低の発電量を決めます(ネットワークがエネルギーを必要としていなくても、振動室は
    常に少しずつ燃料を使います)。
*   maxEnergyPerGameTick は、アップグレード無しの振動室の最大の出力(と速さ)を決めます。

## レシピ

<RecipeFor id="vibration_chamber" />
