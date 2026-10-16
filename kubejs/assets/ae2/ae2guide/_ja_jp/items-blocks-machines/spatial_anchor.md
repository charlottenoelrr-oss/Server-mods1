---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 空間アンカー
  icon: spatial_anchor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:spatial_anchor
---

# 空間アンカー

<BlockImage id="spatial_anchor" p:powered="true" scale="8"/>

AE2 のネットワークの[デバイス](../ae2-mechanics/devices.md)が動くには、チャンクが読み込まれている必要があり、一部だけが読み込まれていると
正しく動かないことがあります。空間アンカーはこの問題を解決します。ネットワークがあるチャンクを強制的に読み込みます。
チャンクの境界をまたぐケーブルが1本あれば、その新しいチャンクも読み込まれます。

「読み込み」は[量子ブリッジ](quantum_bridge.md)を越えて広がりますが、ディメンションはまたぎません。なので、
ネザーへの量子ブリッジがあるなら、拠点のネットワークとネザーのネットワークの両方に空間アンカーが必要です。

初期設定では、読み込んだチャンクでランダムティックも有効にします。これは ae2 の設定で切れます。

何かの理由でそうしたければ、<ItemLink id="certus_quartz_wrench" /> で回転できます。

## 設定

*   空間アンカーから、エネルギーを AE で表示するか E/FE で表示するかの全体の設定を変えられます。
*   読み込んでいるチャンクを示すホログラムをワールドに表示できます。

## エネルギー

空間アンカーは次の式で[エネルギー](../ae2-mechanics/energy.md)を使います:

e = 80 + (x\*(x+1))/2

x は読み込んでいるチャンクの数です

## レシピ

<RecipeFor id="spatial_anchor" />
