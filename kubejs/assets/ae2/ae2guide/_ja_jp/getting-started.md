---
navigation:
  title: はじめに (1.20+)
  position: 10
---

<div class="notification is-info">
  以下の情報は Minecraft 1.20 以降の Applied Energistics 2 にだけ当てはまります。
</div>

# はじめに

## 最初の素材を手に入れる

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/meteor_interior.snbt" />
</GameScene>

Applied Energistics 2 を始めるには、まず[隕石](ae2-mechanics/meteorites.md)を見つける必要があります。隕石はわりとよくあり、地形に大きな穴を残すので、旅の途中で見かけたことがあるでしょう。
見つからなければ、<ItemLink id="meteorite_compass" /> をクラフトすると、最も近い <ItemLink id="mysterious_cube" /> を指してくれます。

隕石を見つけたら、中心まで掘り進みましょう。ケルタスクォーツの塊、ケルタスクォーツの芽、いろいろな種類の[芽生えたケルタスクォーツ](items-blocks-machines/budding_certus.md)、そして中心に神秘的なキューブがあります。

ケルタスクォーツの塊と、見つけたケルタスクォーツブロックを掘りましょう。芽生えたケルタスクォーツも回収できますが、シルクタッチが無いと1段階劣化します。

完璧な芽生えたケルタスクォーツは壊さないでください。シルクタッチでも傷ついた芽生えたケルタスクォーツに劣化してしまい、完璧に戻すことはできません。

隕石の中心の神秘的なキューブも掘ると、刻印機の金型が4種類全て手に入ります。

## ケルタスクォーツを育てる

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_1.snbt" />
</GameScene>

ケルタスクォーツの芽は、アメジストと同じように[芽生えたケルタスクォーツ](items-blocks-machines/budding_certus.md)から生えます。育ちきっていない芽を壊すと、<ItemLink id="certus_quartz_dust" /> が1個落ち、幸運の影響は受けません。育ちきった塊を壊すと
<ItemLink id="certus_quartz_crystal" /> が4個落ち、幸運で数が増えます。

芽生えたケルタスクォーツには4つの段階があります: 完璧、傷ついた、欠けた、壊れかけ。

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_blocks.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

芽が1段階育つたびに、芽生えたブロックは一定の確率で1段階劣化し、最後には
ただのケルタスクォーツブロックになります。芽生えたブロック(またはケルタスクォーツブロック)を
<ItemLink id="charged_certus_quartz_crystal" /> 1個以上と一緒に水に投げ込むと、修復(や新しい芽生えたブロックの作成)ができます。

<RecipeFor id="damaged_budding_quartz" />

完璧な芽生えたケルタスクォーツは劣化せず、ケルタスクォーツを無限に生みます。ただし、クラフトできず、ツルハシでは
シルクタッチがあっても動かせません。(ただし[空間ストレージ](ae2-mechanics/spatial-io.md)なら*動かせます*)

ケルタスクォーツの芽は、そのままではとてもゆっくりしか育ちません。幸い、<ItemLink id="growth_accelerator" /> を芽生えたブロックの隣に置くと、
これを大きく速められます。まず最優先でいくつか作りましょう。

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_2.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="energy_acceptor" /> や <ItemLink id="vibration_chamber" /> も作れるほどのクォーツが無ければ、
<ItemLink id="crank" /> を作って加速器の端に付けましょう。

ケルタスクォーツの自動収穫は[ここで説明しています](example-setups/simple-certus-farm.md)。

## フルーシュについて少し

もう1つ必要な素材がフルーシュで、成長加速器を作るときにすでに出会っています。チャージ済みケルタスクォーツ、レッドストーン、ネザークォーツを水に投げ込むと作れます。これを自動化するのは「読者への宿題」です。

<ItemLink id="charged_certus_quartz_crystal" /> を作るには <ItemLink id="charger" /> が必要です。まだ作っていなければ作りましょう。

## プロセッサを刻印する

隕石を探索したとき、神秘的なキューブを壊して4つの「金型」を手に入れたはずです。これらは <ItemLink id="inscriber" /> で3種類のプロセッサを作るのに使います。

<ItemGrid>
  <ItemIcon id="silicon_press" />

  <ItemIcon id="logic_processor_press" />

  <ItemIcon id="calculation_processor_press" />

  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

刻印機は、バニラのかまどと同じように面ごとに働きが違う機械です。上か下から入れると上か下のスロットに入り、横か後ろから入れると中央のスロットに入ります。完成品は横か後ろから取り出せます。

ホッパーでの自動化をしやすくする(パイプのスパゲッティを減らせるかもしれない)ため、刻印機は <ItemLink id="certus_quartz_wrench" /> で回転できます。

次の手順、とても簡単な ME システム作りに備えて、各種類のプロセッサをいくつか作っておきましょう。プロセッサの生産の自動化は「[読者への宿題](example-setups/processor-automation.md)」です。

## 物質エネルギー技術: ME ネットワークとストレージ

### ME ストレージとは?

「エム・イー」と読み、Matter Energy(物質エネルギー)の略です。

物質エネルギーは Applied Energistics 2 の中心となる部品で、マッドサイエンティスト版のマルチブロックのチェストのようなものです。
保管の状況を一変させます。ME は Minecraft の他の保管の仕組みとはまったく違うので、
慣れるには少し発想の転換が必要かもしれません。ですが、いったん始めれば、小さな空間に膨大な保管と
複数の端末からのアクセスができ、それすら可能になることのほんの一部にすぎません。

### 始めるのに何を知っておけばいい?

まず、ME はアイテムを [ストレージセル](items-blocks-machines/storage_cells.md)と呼ばれる別のアイテムの中に保管します。容量がどんどん増える5つの段階があります。
ストレージセルを使うには、<ItemLink id="chest" /> か <ItemLink id="drive" /> に入れる必要があります。

<ItemLink id="chest" /> は、セルを入れるとすぐに中身を表示し、<ItemLink id="minecraft:chest" /> と同じように
アイテムを出し入れできます。ただし、アイテムは実際には <ItemLink id="chest" /> 自体ではなくストレージセルに保管されています。

<ItemLink id="chest" /> は使いどころが限られ、役に立つ場面も多くありません。AE2 を本当に
活用するには、[ME ネットワーク](ae2-mechanics/me-network-connections.md)を作る必要があります。

## はじめての ME システム

Applied Energistics 2 の基本的な素材と機械がそろったので、最初の ME(物質エネルギー)システムを作れます。自動クラフトも物流も無い、とても基本的なもので、すっきりとした検索できる保管庫です。

<GameScene zoom="6" interactive={true}>
<ImportStructure src="assets/assemblies/tiny_me_system.snbt" />

</GameScene>

*   必要なもの:
    * <ItemLink id="drive" /> 1個
    * <ItemLink id="terminal" /> か <ItemLink id="crafting_terminal" /> 1個
    * <ItemLink id="energy_acceptor" /> 1個
    * [ケーブル](items-blocks-machines/cables.md)をいくつか。ガラス・被覆・スマートのどれでもよいが、高密度は不可
    * [ストレージセル](items-blocks-machines/storage_cells.md)をいくつか。容量と種類数のバランスが良い 4k がおすすめ
    (4k と 1k を組み合わせて[区分け](items-blocks-machines/cell_workbench.md)するほうが効率的ですが、今はそこまで複雑なことはしません)
---
1.  ドライブを置きます。
2.  エネルギーアクセプター(やいくつかの AE2 の[デバイス](ae2-mechanics/devices.md))には、立方体と平面の2つの形があります。クラフトグリッドで切り替えられます。エネルギーアクセプターが立方体なら、ドライブの隣に置きます。平らな四角なら、ドライブにケーブルを付け、その上にアクセプターを付けます。
3.  好きな発電MODのケーブル/パイプ/導管で、エネルギーアクセプターにエネルギーを送ります。
4.  ドライブの上(か目の高さの別の場所)にケーブルを付け、そこにターミナルかクラフトターミナルを付けます。
5.  ストレージセルをドライブに入れます
6.  完成
7.  ターミナルの設定をいじってみます
8.  究極の力と能力に浸ります
9.  このネットワークが、全体から見ればかなり小さいことに気づきます

### ネットワークを広げる

基本的な保管と、そこへのアクセスができました。良いスタートですが、そのうち何かの処理を
自動化したくなるでしょう。

その良い例が、かまどの上に <ItemLink id="export_bus" /> を付けて鉱石を入れ、かまどの下に
<ItemLink id="import_bus" /> を付けて焼いた鉱石を取り出す仕組みです。

<ItemLink id="export_bus" /> はネットワークからつながった入れ物へアイテムを搬出し、
<ItemLink id="import_bus" /> はつながった入れ物からネットワークへアイテムを搬入します。

### 限界を超える

ここまでで[デバイス](ae2-mechanics/devices.md)は8個くらいになっているでしょう。9個になると
[チャンネル](ae2-mechanics/channels.md)を管理する必要が出てきます。全てではありませんが、多くのデバイスは動くのにチャンネルが必要です。

初期状態では、ネットワークは8チャンネルまで扱えます。この上限を超えたら、ネットワークに
<ItemLink id="controller" /> を加える必要があります。これでネットワークを大きく広げられます。
[スマートケーブル](items-blocks-machines/cables.md)を使うと、チャンネルがネットワークの中をどう通っているかが見えます。始めのうちはチャンネルの動きを学ぶために、またレッドストーンとグロウストーンがたくさんあるなら、どんどん使いましょう。
