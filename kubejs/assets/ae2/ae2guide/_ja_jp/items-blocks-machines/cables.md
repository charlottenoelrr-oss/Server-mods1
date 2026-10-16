---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ケーブル
  icon: fluix_glass_cable
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:white_glass_cable
- ae2:orange_glass_cable
- ae2:magenta_glass_cable
- ae2:light_blue_glass_cable
- ae2:yellow_glass_cable
- ae2:lime_glass_cable
- ae2:pink_glass_cable
- ae2:gray_glass_cable
- ae2:light_gray_glass_cable
- ae2:cyan_glass_cable
- ae2:purple_glass_cable
- ae2:blue_glass_cable
- ae2:brown_glass_cable
- ae2:green_glass_cable
- ae2:red_glass_cable
- ae2:black_glass_cable
- ae2:fluix_glass_cable
- ae2:white_covered_cable
- ae2:orange_covered_cable
- ae2:magenta_covered_cable
- ae2:light_blue_covered_cable
- ae2:yellow_covered_cable
- ae2:lime_covered_cable
- ae2:pink_covered_cable
- ae2:gray_covered_cable
- ae2:light_gray_covered_cable
- ae2:cyan_covered_cable
- ae2:purple_covered_cable
- ae2:blue_covered_cable
- ae2:brown_covered_cable
- ae2:green_covered_cable
- ae2:red_covered_cable
- ae2:black_covered_cable
- ae2:fluix_covered_cable
- ae2:white_covered_dense_cable
- ae2:orange_covered_dense_cable
- ae2:magenta_covered_dense_cable
- ae2:light_blue_covered_dense_cable
- ae2:yellow_covered_dense_cable
- ae2:lime_covered_dense_cable
- ae2:pink_covered_dense_cable
- ae2:gray_covered_dense_cable
- ae2:light_gray_covered_dense_cable
- ae2:cyan_covered_dense_cable
- ae2:purple_covered_dense_cable
- ae2:blue_covered_dense_cable
- ae2:brown_covered_dense_cable
- ae2:green_covered_dense_cable
- ae2:red_covered_dense_cable
- ae2:black_covered_dense_cable
- ae2:fluix_covered_dense_cable
- ae2:white_smart_cable
- ae2:orange_smart_cable
- ae2:magenta_smart_cable
- ae2:light_blue_smart_cable
- ae2:yellow_smart_cable
- ae2:lime_smart_cable
- ae2:pink_smart_cable
- ae2:gray_smart_cable
- ae2:light_gray_smart_cable
- ae2:cyan_smart_cable
- ae2:purple_smart_cable
- ae2:blue_smart_cable
- ae2:brown_smart_cable
- ae2:green_smart_cable
- ae2:red_smart_cable
- ae2:black_smart_cable
- ae2:fluix_smart_cable
- ae2:white_smart_dense_cable
- ae2:orange_smart_dense_cable
- ae2:magenta_smart_dense_cable
- ae2:light_blue_smart_dense_cable
- ae2:yellow_smart_dense_cable
- ae2:lime_smart_dense_cable
- ae2:pink_smart_dense_cable
- ae2:gray_smart_dense_cable
- ae2:light_gray_smart_dense_cable
- ae2:cyan_smart_dense_cable
- ae2:purple_smart_dense_cable
- ae2:blue_smart_dense_cable
- ae2:brown_smart_dense_cable
- ae2:green_smart_dense_cable
- ae2:red_smart_dense_cable
- ae2:black_smart_dense_cable
- ae2:fluix_smart_dense_cable
---

# ケーブル

<GameScene zoom="3" background="transparent">
  <ImportStructure src="../assets/assemblies/cables.snbt" />
  <IsometricCamera yaw="180" pitch="30" />
</GameScene>

ME ネットワークは隣り合った ME 対応の機械どうしでもできますが、ネットワークを広い範囲に広げる主な方法はケーブルです。

色の違うケーブルを使うと、隣り合ったケーブルどうしがつながらないようにでき、
[チャンネル](../ae2-mechanics/channels.md)をより効率よく配れます。つながったターミナルの色も変わるので、
ターミナルを全部紫にしなくて済みます。フルーシュのケーブルは他の全ての色とつながります。

なお、**チャンネルはケーブルの色とは何の関係もありません**

## 大事な注意

**AE2 が初めてでチャンネルに慣れていないなら、できるだけスマートケーブルと高密度スマートケーブルを使いましょう。
チャンネルがネットワークの中をどう通っているかが見え、動きがわかりやすくなります。**

## もう1つの注意

**これはアイテムや液体やエネルギーなどのパイプではありません。** 中に入れ物は無く、パターンプロバイダーや機械がこれに
「送り込む」こともありません。AE2 の[デバイス](../ae2-mechanics/devices.md)をつないでネットワークにするだけです。

## ガラスケーブル

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/fluix_glass_cable.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="fluix_glass_cable" /> は一番簡単に作れるケーブルで、電力と最大8つの[チャンネル](../ae2-mechanics/channels.md)を運びます。
17色あり、初期はフルーシュで、16種類の染料のどれでも好きな色に染められます。

色付きのケーブルを作るには、染料1つの周りを同じ種類のケーブル8本で囲みます(ケーブルの色は問いませんが、
ガラス・スマートなど種類はそろえる必要があります)。forge 対応のペイントブラシで、ワールドに置いたケーブルを塗ることもできます。

色付きのケーブルを水入りバケツとクラフトすると、色を落とせます。

ケーブルを羊毛で覆うと <ItemLink id="fluix_covered_cable" /> になり、<ItemLink id="fluix_smart_cable" /> をクラフトすると
[チャンネル](../ae2-mechanics/channels.md)の様子がよくわかるようになります。

<RecipeFor id="fluix_glass_cable" />

<RecipeFor id="blue_glass_cable" />

## 被覆ケーブル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

被覆ケーブルは、<ItemLink id="fluix_glass_cable" /> に比べてゲーム上の利点はありません。ただ、
覆われた見た目が好きなら、見た目の選択肢として使えます。

<ItemLink id="fluix_glass_cable" /> と同じ方法で色を付けられます。<ItemLink id="fluix_covered_cable" /> 4本を
レッドストーンとグロウストーンとクラフトすると <ItemLink id="fluix_covered_dense_cable" /> になります。

<Recipe id="network/cables/covered_fluix" />

<RecipeFor id="blue_covered_cable" />

<a name="dense-cable"></a>

## 高密度ケーブル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

容量の大きいケーブルで、8チャンネルしか運べない普通のケーブルと違い、32チャンネルを運べます。
ただし、バスを付けられないので、バスやパネルを使う前に、高密度から細いケーブル(<ItemLink id="fluix_glass_cable" /> や
<ItemLink id="fluix_smart_cable" /> など)に切り替える必要があります。

高密度ケーブルは、チャンネルの「最短の道」の動きを少し変えます。チャンネルは高密度ケーブルまで最短の道を通り、
そこから高密度ケーブルの中を最短の道でコントローラーまで通ります。

<Recipe id="network/cables/dense_covered_fluix" />

<RecipeFor id="blue_covered_dense_cable" />

<a name="smart-cable"></a>

## スマートケーブル

<Row>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
</Row>

見た目は <ItemLink id="fluix_covered_cable" /> に少し似ていますが、ケーブルのチャンネルの使い方を見える形にして
診断に役立ちます。チャンネルはケーブルの黒い帯に沿って光る色の線として表示され、
ネットワークでチャンネルがどう使われているかがわかります。普通のスマートケーブルでは、最初の4チャンネルがケーブルの色の線、
次の4チャンネルが白い線で表示されます。高密度スマートケーブルでは、1本の帯が4チャンネルを表します。

<ItemLink id="controller" /> のあるネットワークでは、ケーブルの線はチャンネルが通る道をそのまま表します。

コントローラーの無いネットワークのスマートケーブルは、そのケーブルを通るチャンネルの数ではなく、ネットワーク全体で使っているチャンネルの数を表示します。

<ItemLink id="fluix_glass_cable" /> と同じ方法で色を付けられます。

<Recipe id="network/cables/smart_fluix" />

<Recipe id="network/cables/dense_smart_fluix" />

<RecipeFor id="blue_smart_cable" />
