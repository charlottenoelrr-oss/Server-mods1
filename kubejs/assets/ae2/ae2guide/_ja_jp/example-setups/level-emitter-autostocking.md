---
navigation:
  parent: example-setups/example-setups-index.md
  title: レベルエミッターで自動在庫
  icon: level_emitter
---

# レベルエミッターで自動在庫

「あるアイテムを決まった数だけ在庫として保ち、必要に応じてクラフトするには?」と思うかもしれません。

1つの方法は、<ItemLink id="export_bus" />・<ItemLink id="level_emitter" />・<ItemLink id="crafting_card" /> を使い、ネットワークの
[自動クラフト](../ae2-mechanics/autocrafting.md)に新しいアイテムを自動で要求させることです。この仕組みは、1種類のアイテムを大量に保つためのものです。

もちろん、レベルエミッターとレッドストーンカードを省けば、ネットワークにずっとクラフトさせ続けることもできます。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/level_emitter_autostocking.snbt" />

  <BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (1) エクスポートバス: 欲しいアイテムに絞り込む。レッドストーンカードとクラフトカードを入れる。レッドストーンのモードを
        「信号で有効」に、クラフトの動作を「在庫のアイテムを使わない」にする。
        <Row><ItemImage id="redstone_card" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0.7 1 0" max="1 2 1">
        (2) レベルエミッター: 欲しいアイテムと数を設定し、「量が上限より少ないとき信号を出す」にする。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (3) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="export_bus" />(1)は欲しいアイテムに絞り込みます。<ItemLink id="redstone_card" /> と <ItemLink id="crafting_card" /> を入れます。
  「レッドストーンのモード」を「信号で有効」に、「クラフトの動作」を「在庫のアイテムを使わない」にします。
* <ItemLink id="level_emitter" />(2)は欲しいアイテムと数を設定し、「量が上限より少ないとき信号を出す」にします。
* <ItemLink id="interface" />(3)は初期の設定のままです。

## しくみ

1. [ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)にある欲しいアイテムの量が
   <ItemLink id="level_emitter" /> で指定した数より少ないと、レッドストーン信号を出します。
2. レッドストーン信号を受けると(<ItemLink id="crafting_card" /> があり、在庫のアイテムを使わない設定なので)、
   <ItemLink id="export_bus" /> はネットワークの[自動クラフト](../ae2-mechanics/autocrafting.md)に欲しいアイテムを
   追加でクラフトするよう要求し、それを搬出します。
3. アイテムが入ってくると(内部の入れ物に何も保つ設定ではないので)、<ItemLink id="interface" /> はそのアイテムをネットワークのストレージに入れます。
