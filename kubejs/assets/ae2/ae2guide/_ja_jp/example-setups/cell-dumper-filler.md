---
navigation:
  parent: example-setups/example-setups-index.md
  title: セルの中身を出す/入れる装置
  icon: io_port
---

# セルの中身を出す/入れる装置

「セルの中身をチェストや引き出しの並びやバックパックに素早く出すには?逆に、そこからセルを満たすには?」と思うかもしれません。

答えは、<ItemLink id="io_port" /> と、アイテムを置ける場所・取り出せる場所を制限するサブネットを使うことです。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/cell_dumper_filler.snbt" />

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 1">
        (1) 入出力ポート: GUI の中央の矢印のボタンで「ネットワークにデータを移す」か「ストレージセルにデータを移す」に
        設定できる。加速カードを3枚入れる。
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0.7 0" max="1 1 1">
        (2) ストレージバス: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#33dd33" min="0 1 0" max="1 2 1">
        満たしたいもの・空にしたいものをここに置く。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0.35 0.35" max="2.3 0.65 0.65">
        クォーツファイバー: エネルギー源が別のネットワークの場合だけ必要。
  </BoxAnnotation>

<DiamondAnnotation pos="3 0.5 0.5" color="#00ff00">
        別のネットワークやエネルギーアクセプターなどのエネルギー源へ。
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="io_port" />(1)は、GUI の中央の矢印のボタンで「ネットワークにデータを移す」か「ストレージセルにデータを移す」に
  設定できます。最高速にするため加速カードを3枚入れます。
* <ItemLink id="storage_bus" />(2)は初期の設定のままです。

## しくみ

### 「ネットワークに移す」モード

1. <ItemLink id="io_port" /> が、入れた[ストレージセル](../items-blocks-machines/storage_cells.md)の中身を
    [ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に出そうとします。
2. サブネットのストレージは <ItemLink id="storage_bus" /> だけなので、アイテムや液体などは
    前に置いたものに保管されます。
* <ItemLink id="energy_cell" /> が十分な[エネルギー](../ae2-mechanics/energy.md)の緩衝になるので、1tickに大量のアイテムを
    運ぶ電力の消費でネットワークがエネルギー切れになりません。

### 「ストレージセルに移す」モード

1. <ItemLink id="io_port" /> が、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)の中身を
   入れた[ストレージセル](../items-blocks-machines/storage_cells.md)に出そうとします。
2. サブネットのストレージは <ItemLink id="storage_bus" /> だけなので、アイテムや液体などは
   前に置いたものから取り出されます。
* <ItemLink id="energy_cell" /> が十分な[エネルギー](../ae2-mechanics/energy.md)の緩衝になるので、1tickに大量のアイテムを
  運ぶ電力の消費でネットワークがエネルギー切れになりません。
