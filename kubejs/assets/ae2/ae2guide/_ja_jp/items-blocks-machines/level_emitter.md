---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: レベルエミッター
  icon: level_emitter
  position: 220
categories:
- devices
item_ids:
- ae2:level_emitter
- ae2:energy_level_emitter
---

# レベルエミッター

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/level_emitter.snbt" />
</GameScene>

レベルエミッターは、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)のアイテムの量に応じてレッドストーン信号を出します。

ネットワークに蓄えた[エネルギー](../ae2-mechanics/energy.md)に応じてレッドストーン信号を出す版もあります。

アイテムや液体は、実際に持っていなくても JEI/REI からスロットにドラッグできます。

液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体をフィルターに設定します。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

他の[デバイス](../ae2-mechanics/devices.md)と違い、レベルエミッターは[チャンネル](../ae2-mechanics/channels.md)を*必要としません*。

## 設定

*   レベルエミッターは「以上」か「未満」のモードを選べます
*   <ItemLink id="crafting_card" /> を入れると、「アイテムのクラフト中にレッドストーン信号を出す」か
    「アイテムをクラフトするためにレッドストーン信号を出す」を選べます

## アップグレード

レベルエミッターは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます
*   <ItemLink id="crafting_card" /> でクラフトの機能が使えるようになります

## クラフトの機能

<ItemLink id="crafting_card" /> を入れると、エミッターはクラフトモードに切り替わります。

これで2つの選択肢が使えます:

1つ目の「アイテムのクラフト中にレッドストーン信号を出す」は、[自動クラフト](../ae2-mechanics/autocrafting.md)が
<ItemLink id="pattern_provider" /> を通して特定のアイテムをクラフトしている間、レッドストーン信号を出します。電力を食う自動化の仕組みを、
実際に使っている間だけ動かすのに便利です。

2つ目の「アイテムをクラフトするためにレッドストーン信号を出す」は、無限の農場や、確実ではなく一定の確率でしか
完成品が出ない自動化の仕組みなど、特定の用途にとても便利です。
この設定は、エミッターのフィルターのスロットにあるアイテムについて、[自動クラフト](../ae2-mechanics/autocrafting.md)が使う仮の[パターン](patterns.md)を作ります。
(正しく動かすには、同じアイテムの本物のパターンが <ItemLink id="pattern_provider" /> に**あってはいけません**)

この「パターン」は材料を決めませんし、気にもしません。
言っているのは「このレベルエミッターからレッドストーン信号を出せば、ME システムは近いうちか遠い将来のどこかで
このアイテムを受け取る」ということだけです。たいていは、材料が要らない無限の農場をオン・オフしたり、
丸石を複製する機械があるときの「丸石1個 = 丸石2個」のような、普通の自動クラフトでは理解できない
[再帰的なレシピを扱う仕組み](../example-setups/recursive-crafting-setup.md)を動かしたりするのに使います。

## レシピ

<RecipeFor id="level_emitter" />

<RecipeFor id="energy_level_emitter" />
