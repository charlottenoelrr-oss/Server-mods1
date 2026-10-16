---
navigation:
  parent: example-setups/example-setups-index.md
  title: インターフェースで自動在庫
  icon: interface
---

# インターフェースで自動在庫

「いろいろなアイテムを決まった数だけ在庫として保ち、必要に応じてクラフトするには?」と思うかもしれません。

1つの方法は、<ItemLink id="interface" /> と <ItemLink id="crafting_card" /> を使い、ネットワークの[自動クラフト](../ae2-mechanics/autocrafting.md)に
新しいアイテムを自動で要求させることです。この仕組みは、いろいろな種類のアイテムを少しずつ保つのに向いています。

この見本は横に広がりすぎないよう短くしています。普通の[ケーブル](../items-blocks-machines/cables.md)の8[チャンネル](../ae2-mechanics/channels.md)を全て使えるよう、
<ItemLink id="interface" /> 4個と <ItemLink id="storage_bus" /> 4個にするのがいちばん良いでしょう。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_autostocking.snbt" />

<BoxAnnotation color="#dddddd" min="0 0 0" max="2 1 1">
        (1) インターフェース: 欲しいアイテムを保つよう設定し、クラフトカードを入れる。
        <ItemImage id="crafting_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="2 1.3 1">
        (2) ストレージバス: 「入出力モード」を「取り出しのみ」にする。
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="interface" />(1)は、欲しいアイテムを上のスロットにクリックで入れるか JEI からドラッグし、
   スロットの上のレンチのアイコンをクリックして数を決め、そのアイテムを保つよう設定します。<ItemLink id="crafting_card" /> を入れます。
* <ItemLink id="storage_bus" />(2)は、「入出力モード」を「取り出しのみ」にします。

## しくみ

1. <ItemLink id="interface" /> が、設定したアイテムを[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)から十分に取り出せないと、
   (<ItemLink id="crafting_card" /> があれば)ネットワークの[自動クラフト](../ae2-mechanics/autocrafting.md)にそのアイテムを追加でクラフトするよう要求します。
2. <ItemLink id="storage_bus" /> によって、ネットワークがインターフェースの中身にアクセスできます。
