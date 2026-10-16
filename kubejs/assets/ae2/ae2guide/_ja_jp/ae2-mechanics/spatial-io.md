---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 空間入出力
  icon: spatial_storage_cell_2
---

# 空間入出力

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/spatial_storage_1x1x1.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="2 2 2">
        動かす範囲
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />

</GameScene>

空間入出力は、ワールドの空間の範囲を物理的に切り取って貼り付ける方法です。<ItemLink id="flawless_budding_quartz" /> を動かしたり、
拠点に中身をいろいろ入れ替えて別の用途に使える部屋を作ったり、エンドポータルを
動かしたりさえできます!

指定した範囲を、空間ストレージのディメンションにある同じ大きさの範囲と*入れ替える*ことで働きます。
パイロンの配列の中にあるものは空間ストレージのディメンションへ、ディメンションにあるものはパイロンの配列へ送られます。

つまり、ディメンションの間を移動する手段があれば(空間入出力でテレポーターを作ることも*できます*が、
とても複雑で少し不安定なので、このガイドでは扱いません)、大きさを自由に決められる Compact Machines やポケット
ディメンションのように使えます。

# マルチブロックの組み方

空間入出力が働くには、部品を決まった配置にする必要があり、それで切り取って貼り付ける範囲を決めます。

全ての部品が同じ[ネットワーク](me-network-connections.md)にある必要があり、1つのネットワークには
空間入出力の仕組みを1つしか置けません。そのため、[サブネットワーク](subnetworks.md)にするのがおすすめです。

## 空間入出力ポート

<BlockImage id="spatial_io_port" p:powered="true" scale="4" />

<ItemLink id="spatial_io_port" /> は空間入出力の操作を管理します。マルチブロックの仕組みの情報を表示し、
[空間セル](../items-blocks-machines/spatial_cells.md)を入れておきます。

表示されるもの:
- ネットワークに蓄えた[エネルギー](energy.md)と最大値
- 操作に必要なエネルギー。かなり大きくなることがあり、一瞬で使われるので、それを全て蓄えられるだけの
  [エネルギーセル](../items-blocks-machines/energy_cells.md)を用意しましょう。
- パイロンの配列の効率
- 指定した範囲の大きさ

空間入出力の操作をするには、入力のスロットに空間ストレージセルを入れ、空間入出力ポートにレッドストーンのパルスを与えます。
すると、パイロンの中の範囲と、空間ストレージのディメンションの範囲が*入れ替わります*。つまり、ある
ブロックの一式を空間ストレージのディメンションに送り、*次にパイロンの中に別のブロックの一式を置いて*、セルを入力のスロットに戻し、
もう一度入出力ポートを動かすと、2つ目の一式が消え、1つ目の一式が再び現れます。

**気をつけて。指定した範囲にいるエンティティは、自分も含めて一緒に運ばれます。出る手段が無いと、
空間ストレージのディメンションの、何も無い真っ暗な箱に閉じ込められます。** 友達へのいたずらに使いましょう!

## パイロン

<BlockImage id="spatial_pylon" p:powered_on="true" scale="4" />

<ItemLink id="spatial_pylon" /> は空間入出力の仕組みの主な部品で、影響を受ける範囲を決めます。

範囲は、パイロンの外側を囲む箱を、全ての方向に1ブロックずつ縮めたものです。

決まりは次のとおりです:
- 最小の大きさは 3x3x3(1x1x1 の範囲になる)
- 全ての空間パイロンが外側を囲む箱の上にあること
- 全ての空間パイロンが同じネットワークにあること
- 全てのパイロンが2ブロック以上の長さであること

例えば、3x3x3 の範囲を決めたいとします。2つ目の決まりにより、全てのパイロンは、決めたい範囲を囲む 5x5x5 の殻の中に
ある必要があります。その厚さ1ブロックの 5x5x5 の殻の中に収まっていれば、ほとんどどんな配置でもかまいません。

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/spatial_storage_3x3x3_pylon_demonstration.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        動かす範囲
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

もっと現実的な仕組みはこうです:

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/better_spatial_storage_3x3x3.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        動かす範囲
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 効率

パイロンの配列の効率は、殻をどれだけ埋めたかで決まります。大きな範囲を最小限の配置で囲むと
とても効率が悪く、*数十億* AE が必要になることもあります。

## セルの大きさ

[空間セル](../items-blocks-machines/spatial_cells.md)は一度使うと、XYZ の大きさ(例: 3x4x2)がずっと決まり、
空間ストレージのディメンションの空間の範囲に結び付けられます。**空間セルは一度使うと、リセットも、初期化し直しも、大きさの変更も
できません。** 違う大きさで使いたいなら、新しいセルを作りましょう。

これはセルの名前にある大きさとは違います。16^3 のセルは、16x16x16 *までの*どんな大きさにもなれます。

この範囲には向きがあり、回転できないことに注意してください。2x2x3 の範囲と 3x2x2 の範囲は、同じ大きさでも
別物です。

セルの XYZ の大きさが(入出力ポートに表示される)指定した範囲と合わないと、入出力ポートは動きません。
