---
navigation:
  parent: example-setups/example-setups-index.md
  title: 専用の局所ストレージ
  icon: drive
---

# 専用の局所ストレージ

[インターフェースの特別な働き](../items-blocks-machines/interface.md#special-interactions)の1つを使うと、
[サブネット](../ae2-mechanics/subnetworks.md)は、メインのネットワークのストレージを見ずに、自分のストレージの中身だけを
メインのネットワークに見せられ、使う[チャンネル](../ae2-mechanics/channels.md)も1つだけです。

これは農場などの局所的なストレージに便利で、アイテムがメインのストレージにあふれ出ません。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/local_storage.snbt" />

<BoxAnnotation color="#dddddd" min="4 0 0" max="5 2 1">
        (1) アイテムを搬入する何かの方法(この例ではインターフェース)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 0 0" max="4 1 1">
        (2) ドライブ: セルをいくつか入れる。セルは農場で出るものに絞り込む。
        セルには均等分配カードとあふれ破棄カードを入れてもよい。
        <Row><ItemImage id="item_storage_cell_4k" scale="2" /> <ItemImage id="equal_distribution_card" scale="2" /> <ItemImage id="void_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1 0" max="4 2 0.3">
        (3) クラフトターミナル: サブネットのドライブの中身は見えるが、メインのネットワークのストレージの中身は見えない。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (4) インターフェース 2: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 0" max="2 1 1">
        (5) ストレージバス: 優先度をメインのストレージより高くする。農場で出るものに絞り込んでもよい。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 0.3">
        クラフトターミナル: メインのネットワークのストレージとサブネットの*両方*の中身が見える。
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* 1つ目の <ItemLink id="interface" />(1)は、農場からアイテムを受け取ってサブネットに入れるだけです。
* <ItemLink id="drive" />(2)には[セル](../items-blocks-machines/storage_cells.md)をいくつか入れます。セルは農場で出るものに
  [区分け](../items-blocks-machines/cell_workbench.md)します。
  セルには <ItemLink id="equal_distribution_card" /> や <ItemLink id="void_card" /> を入れてもかまいません。
* 2つ目の <ItemLink id="interface" />(4)は初期の設定のままです。
* <ItemLink id="storage_bus" /> は[優先度](../ae2-mechanics/import-export-storage.md#storage-priority)をメインのストレージより
  高くします。農場で出るものに絞り込んでもかまいません。

## しくみ

* サブネットの <ItemLink id="interface" /> が、メインのネットワークの <ItemLink id="storage_bus" /> に <ItemLink id="drive" /> の
中身を見せます。つまり、ストレージバスはドライブのセルから直接アイテムを取り出したり入れたりできます。
* ストレージバスは[優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を高くしているので、アイテムは
  メインのストレージではなく優先してサブネットに戻されます。
* 大事なのは、サブネットのセルがいっぱいになっても、アイテムがメインのネットワークにあふれないことです。詰まると
壊れる種類の農場なら、<ItemLink id="void_card" /> で余りを消すこともできます。
* 農場で何種類ものアイテムが出るなら、<ItemLink id="equal_distribution_card" /> で、1種類がセルを全部埋めて
他のアイテムを保管できなくなるのを防げます。
