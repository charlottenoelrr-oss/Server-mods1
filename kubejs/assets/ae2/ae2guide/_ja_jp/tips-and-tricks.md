---
navigation:
  title: ヒントとコツ
  position: 20
---

# ヒントとコツ

ちょっとしたおすすめをいろいろ

* Optifine は外しましょう
* 拡大と注釈の表示/非表示のボタンがあるガイドブックの場面は、回したり拡大したりできます
* ネットワークは木のような形にし、輪を作らないようにしましょう
* フルブロックの[デバイス](ae2-mechanics/devices.md)は8個以下のまとまりにしましょう。[チャンネル](ae2-mechanics/channels.md)が
  ネットワークをどう通るかを深く理解しているなら別です
* [パターン](items-blocks-machines/patterns.md)に使う木材は1種類に決めて、それを使い続けましょう。パターンで代用を有効にすると
  うまくいくこともありますが、どこでも同じ木材を使えば手間が大きく減ります。
* <ItemLink id="pattern_access_terminal" /> で[パターン](items-blocks-machines/patterns.md)を縦に並べる/
  パターンを複数の[プロバイダー](items-blocks-machines/pattern_provider.md)に分けると、レシピを並行して処理できます。
* [エネルギーセル](items-blocks-machines/energy_cells.md)を加えると、ネットワークが電力の急増に耐えられます。
* <ItemLink id="condenser" /> には水も使えます
* ネットワークをきれいに保ついちばんの方法は、剣や防具などのMOBの戦利品を適当に入れないことです。エンチャントと耐久値の
  組み合わせが違うごとに、別の[種類](ae2-mechanics/bytes-and-types.md)になります。
* [処理パターン](items-blocks-machines/patterns.md)の完成品を戻すときは、「アイテムがシステムに入る」出来事が必要です。
  <ItemLink id="import_bus" />、<ItemLink id="interface" />、<ItemLink id="pattern_provider" /> の返却スロットなどを使います。
  <ItemLink id="storage_bus" /> を付けたチェストに完成品をパイプで流し込むだけではだめです。
* 拡大と注釈の表示/非表示のボタンがあるガイドブックの場面は、回したり拡大したりできることを忘れずに
* <ItemLink id="pattern_provider" /> は、レシピ1回分がそろったものだけを、1つの面からだけ送ります。これは
  機械に中途半端な材料が入らないようにするのに便利ですが、材料を複数の場所に送りたいこともあります。
  その場合は <ItemLink id="interface" /> を使い、[「パイプ」のサブネット](example-setups/pipe-subnet.md)にするか、
  いろいろなアイテムのスタック・液体・化学物質などを同時に持てる性質を生かして、中継のチェスト/タンクのように使いましょう。
* 拡大と注釈の表示/非表示のボタンがあるガイドブックの場面は、拡大したり回したりできます
