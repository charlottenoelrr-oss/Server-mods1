---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ネットワークツール
  icon: network_tool
  position: 410
categories:
- tools
item_ids:
- ae2:network_tool
---

# ネットワークツール

<ItemImage id="network_tool" scale="4" />

ネットワークツールは[レンチ](wrench.md)を改造したもので、ネットワークの診断情報も表示し、[アップグレードカード](upgrade_cards.md)をしまっておけます。
ものをすばやく分解したり、ケーブルから[部品](../ae2-mechanics/cable-subparts.md)を外したりするレンチの機能は残っていますが、
ものを回転することはできません。

[アップグレードカード](upgrade_cards.md)をしまうスロットが9つあり、ツールがインベントリのどこかにあれば、
AE2 のどのデバイスの画面からもそのカードを使えます。

ネットワークのどこかを右クリックすると、<ItemLink id="controller" /> を右クリックしたときのような診断情報の画面が出ます。
この画面には次のものが表示されます

*   ネットワークで使っているチャンネルの数
*   エネルギーを AE で表示するか E/FE で表示するかの全体の設定の切り替え
*   ネットワークに蓄えた[エネルギー](../ae2-mechanics/energy.md)の量と、ネットワークの最大の蓄え
*   ネットワークに入ってくるエネルギーと、使っているエネルギーの量
*   ネットワーク上の全ての[デバイス](../ae2-mechanics/devices.md)と部品の一覧

[サブネット](../ae2-mechanics/subnetworks.md)をいじっているときに、2つのケーブルやデバイスが同じネットワークに入っているかを
確かめるのにも役立ちます。

## 外装を隠す

どちらかの手にネットワークツールを持っている間は、<a href="facades.md">外装</a>が隠れます。

隠れた外装の後ろのブロックは、外装を外さなくても操作できます。

## レシピ

<RecipeFor id="network_tool" />
