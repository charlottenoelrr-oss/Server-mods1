---
navigation:
  parent: ae2wtlib/ae2wtlib-index.md
  title: AE2WTLib の無線ターミナル
  icon: ae2wtlib:wireless_universal_terminal
  position: 10
categories:
- ae2wtlib
item_ids:
  - ae2wtlib:wireless_pattern_encoding_terminal
  - ae2wtlib:wireless_pattern_access_terminal
---

# 無線ターミナル

<ItemGrid>
  <ItemIcon id="ae2wtlib:wireless_universal_terminal" />
  <ItemIcon id="ae2:wireless_crafting_terminal" />
  <ItemIcon id="ae2wtlib:wireless_pattern_encoding_terminal" />
  <ItemIcon id="ae2wtlib:wireless_pattern_access_terminal" />
</ItemGrid>

AE2WTLib の無線ターミナルは全て、<ItemLink id="ae2:energy_card" /> に加えて <ItemLink id="ae2wtlib:quantum_bridge_card" /> で強化でき、
<ItemLink id="ae2wtlib:wireless_universal_terminal" /> にまとめられます。

AE2 の <ItemLink id="ae2:wireless_terminal" /> と同じく、キー割り当てで開け、Curios のスロットに入れられます
(Curios API を実装したMODが入っていれば)。

無線ターミナルは普通の <ItemLink id="ae2:wireless_terminal" /> と同じように、<ItemLink id="ae2:wireless_access_point" /> で登録できます

## 無線ユニバーサルターミナル

<ItemImage id="ae2wtlib:wireless_universal_terminal" scale="3" />

<ItemLink id="ae2wtlib:wireless_universal_terminal" /> は、複数の無線ターミナルを1つのアイテムにまとめたものです。

## 無線クラフトターミナル

<ItemImage id="ae2:wireless_crafting_terminal" scale="3" />

<ItemLink id="ae2:wireless_crafting_terminal" /> はクラフトターミナルの無線版です。
素の AE2 に比べて[追加の機能](wireless_crafting_terminal.md)があります。

## 無線パターンエンコードターミナル

<ItemImage id="ae2wtlib:wireless_pattern_encoding_terminal" scale="3" />

<ItemLink id="ae2:pattern_encoding_terminal" /> の無線版です

<RecipeFor id="ae2wtlib:wireless_pattern_encoding_terminal" />

## 無線パターンアクセスターミナル

<ItemImage id="ae2wtlib:wireless_pattern_access_terminal" scale="3" />

<ItemLink id="ae2:pattern_access_terminal" /> の無線版です

<RecipeFor id="ae2wtlib:wireless_pattern_access_terminal" />

## アドオンのターミナル

他のアドオンの無線ターミナルも、ほとんどは <ItemLink id="ae2wtlib:wireless_universal_terminal" /> で使えます。

## ユニバーサルターミナルで使えないターミナル

<ItemLink id="ae2:wireless_terminal" /> は <ItemLink id="ae2wtlib:wireless_universal_terminal" /> に入れられません。
<ItemLink id="ae2:wireless_crafting_terminal" /> に比べて何の利点も無いからです。
<ItemLink id="ae2wtlib:quantum_bridge_card" /> も使えません
