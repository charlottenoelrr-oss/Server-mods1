---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: パターンプロバイダー
  icon: pattern_provider
  position: 210
categories:
- devices
item_ids:
- ae2:pattern_provider
- ae2:cable_pattern_provider
---

# パターンプロバイダー

<Row gap="20">
<BlockImage id="pattern_provider" scale="8" />
<BlockImage id="pattern_provider" p:push_direction="up" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

パターンプロバイダーは、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みがワールドとやりとりする主な手段です。[パターン](patterns.md)の
材料を隣の入れ物に送り出し、プロバイダーにアイテムを入れるとネットワークに入ります。<ItemLink id="import_bus" /> で機械の完成品を
ネットワークに取り込む代わりに、機械の完成品を近くのパターンプロバイダー(たいていは材料を送ったもの)にパイプで戻せば、
チャンネルを1つ節約できることがよくあります。

なお、プロバイダーはクラフトCPU の[クラフトストレージ](crafting_cpu_multiblock.md#crafting-storage)から直接材料を送るので、
入れ物の中に材料を持つことは決してなく、プロバイダーからパイプで取り出すことはできません。プロバイダーに別の入れ物(樽など)へ
送らせ、そこからパイプで取り出す必要があります。

もう1つ、プロバイダーは材料を全て一度に送る必要があり、半分だけ送ることはできません。これはうまく利用できます。

パターンプロバイダーは、[サブネット](../ae2-mechanics/subnetworks.md)のインターフェースと特別な働きをします: インターフェースが手を加えられていなければ(依頼のスロットが空なら)、
プロバイダーはインターフェースを飛ばして、そのサブネットの[ストレージ](../ae2-mechanics/import-export-storage.md)に直接送ります。
インターフェースをレシピのまとまりで埋めることはなく、さらに大事なことに、機械に空きができるまで次のまとまりを入れません。
これはブロッキングモードでも正しく動き、プロバイダーはインターフェースのスロットではなく、機械のスロットの材料を見張ります。

例えば、この仕組みでは、焼くものと燃料の両方をかまどの対応するスロットに直接送ります。
これを使えば、機械の複数の面や複数の機械にパターンで送れます。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) パターンプロバイダー: ケルタスクォーツのレンチで方向指定の形にし、該当する加工パターンを入れる。

        ![鉄のパターン](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) ストレージバス 1: 石炭に絞り込む。
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) ストレージバス 2: 反転カードを使って、石炭を拒否するよう絞り込む。
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

これは複数の機械へ送る仕組みの全体の図です

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        インターフェース(フルブロックではなく平面にする)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        ストレージバス
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        パターンで送りたい場所
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

同じパターンを入れた複数のパターンプロバイダーにも対応していて、並行して動きます。

パターンプロバイダーは、まとまりを全ての面に順番に送ろうとするので、付いている機械を全て並行して使います。

## 種類

パターンプロバイダーには、普通の形、方向指定の形、平らな形([部品](../ae2-mechanics/cable-subparts.md))の3種類があります。
どの面に材料を送り、どの面からアイテムを受け取り、どの面でネットワークにつながるかが変わります。

* 普通のパターンプロバイダーは、全ての面に材料を送り、全ての面から受け取り、AE2 のたいていの機械と同じく、
    ケーブルのように全ての面で[ネットワークにつながります](../ae2-mechanics/me-network-connections.md)。

* 方向指定のパターンプロバイダーは、普通のパターンプロバイダーに <ItemLink id="certus_quartz_wrench" /> を使って向きを変えると
    できます。選んだ面にだけ材料を送り、全ての面から受け取り、選んだ面では[ネットワークにつながりません](../ae2-mechanics/me-network-connections.md)。
    これで、サブネットを作りたいときに、ネットワークをつなげずに AE2 の機械へ送れます。

* 平らなパターンプロバイダーは[ケーブルの部品](../ae2-mechanics/cable-subparts.md)なので、同じケーブルに複数付けられ、小さくまとめられます。
    方向指定のパターンプロバイダーの選んだ面と同じように働き、パターンを送り、入力を受け取り、表の面では
    [ネットワークに**つながりません**](../ae2-mechanics/me-network-connections.md)。

クラフトグリッドで普通の形と平らな形を切り替えられます。

## 設定

パターンプロバイダーにはいろいろなモードがあります:

*   **ブロッキングモード** は、機械の中にすでに材料があれば、新しい材料のまとまりを送らないようにします。
*   **クラフトのロック** は、いろいろなレッドストーンの条件で、または前のクラフトの完成品がそのパターンプロバイダーに
    入れられるまで、プロバイダーをロックできます。
*   <ItemLink id="pattern_access_terminal" /> にプロバイダーを表示するか隠すかを選べます。

## 優先度

優先度は、GUI の右上にあるレンチを押して設定します。同じアイテムの[パターン](patterns.md)がいくつもある場合、
優先度の高いプロバイダーのパターンが低いものより先に使われます。ただし、優先度の高いパターンの材料がネットワークに無いときは別です。

## よくある勘違い

なぜかみんなこれをやってしまうので、少しでも助けになればとここに書いておきます。(<ItemLink id="export_bus" /> が
ネットワークからものを出す唯一の方法だと思い込み、パターンプロバイダーもものを出すことを知らないのかもしれません)

これでは思ったとおりに動きません。[ケーブル](cables.md)で述べたとおり、ケーブルはアイテムのパイプではなく、中に入れ物は無いので、
プロバイダーはケーブルに送り込みません。

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_1.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        溶鉱炉ではない
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

プロバイダーには送り先が無いので、働けません。ここでしているのは、ケーブルのように <ItemLink id="export_bus" /> を
ネットワークにつなぐことだけです。

プロバイダーが <ItemLink id="export_bus" /> に何を搬出するかを伝えることもありません。エクスポートバスは、フィルターに入れたものを
全部搬出するだけです。

要するに、ここで作ったのはこれです:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_2.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        溶鉱炉ではない
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

実際に作りたいのは、たぶんこれでしょう。パターンプロバイダーがパターンの中身を隣の機械に送り出せます:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_3.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        溶鉱炉ではない
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

## 分子組立機と一緒に使う

<ItemLink id="molecular_assembler" /> は基本的に他の機械と同じです。入れられる入れ物があり、その中のものに処理をし、
多くの機械と同じように完成品を隣の入れ物に送り出します。なので、他の機械と同じようにプロバイダーと一緒に使いますが、
1つ違う点があります:

組立機は、組立機に直接入れた <ItemLink id="crafting_pattern" />・<ItemLink id="smithing_table_pattern" />・<ItemLink id="stonecutting_pattern" /> から
使うパターンを取れます。
これは組み立てラインでは便利ですが、クラフトのレシピごとに専用の組立機を用意するのは面倒です。

そこで、パターンプロバイダーは組立機と特別な働きをし、材料と一緒にパターンの情報を送れます。
こうすれば、パターンプロバイダーの隣に組立機を置くだけで、プロバイダーは自分のクラフト・鍛冶・石切りのパターンを全て
その組立機で処理できます。

本当にこれだけで、プロバイダーにパターンを入れるだけです:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

*ちょうど8台のプロバイダーになっていることに注意してください。これは1台の組立機・プロバイダー・高密度でないケーブルを通せる
チャンネルの最大数です。*

## レシピ

<RecipeFor id="pattern_provider" />

<RecipeFor id="cable_pattern_provider" />
