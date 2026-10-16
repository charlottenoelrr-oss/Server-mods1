---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEインターフェース
  icon: interface
  position: 210
categories:
- devices
item_ids:
- ae2:interface
- ae2:cable_interface
---

# MEインターフェース

<Row gap="20">
<BlockImage id="interface" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_interface.snbt" />
</GameScene>
</Row>

インターフェースは、小さなチェストと液体タンクのように働き、スロットに在庫として設定したものに応じて、
[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)から自分を満たしたり、そこへ空けたりします。これを1ゲームティックで
済ませようとするので、1ゲームティックに最大9スタックを満たしたり空けたりでき、速いアイテムのパイプがあれば速い搬入・搬出の方法になります。

もう1つ便利な性質として、たいていの液体タンクは1種類の液体しか保管できませんが、インターフェースはアイテムに加えて最大9種類を保管できます。
要するに、少し機能の追加されたチェスト兼多液体タンクで、どのネットワークにもつながなければその追加機能は働きません。
そのため、いろいろなものを少しずつ保管したい、という特定の場面で役立ちます。

## インターフェースの中の仕組み

前に述べたとおり、インターフェースは要するに、すごく速い <ItemLink id="import_bus" /> と <ItemLink id="export_bus" /> と、
たくさんの <ItemLink id="level_emitter" /> が付いたチェスト兼タンクです。

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_internals.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 0.3 1.3" max="9.7 1 1.7">
        在庫にする量を制御するたくさんのレベルエミッター
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 4 1.3" max="9.7 4.7 1.7">
        在庫にする量を制御するたくさんのレベルエミッター
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 1.3 1.3" max="9.7 2 1.7">
        1ゲームティックに1スタック運べる、すごく速いインポートバスたち
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/import_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 3 1.3" max="9.7 3.7 1.7">
        1ゲームティックに1スタック運べる、すごく速いエクスポートバスたち
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/export_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="10 3 2">
        別々の9つの内部スロット
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="15" />
</GameScene>

<a name="special-interactions"></a>

## 特別な働き

インターフェースには、AE2 の他の[デバイス](../ae2-mechanics/devices.md)との間で特別な働きがいくつかあります:

何も設定していないインターフェースに付けた <ItemLink id="storage_bus" /> には、インターフェースのネットワークの
[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)全体が、ストレージバスのネットワークから見えるようになります。
インターフェースのネットワークが、ストレージバスを付けた1つの大きなチェストであるかのように扱われます。
インターフェースのフィルターのスロットに在庫にするアイテムを設定すると、これは働かなくなります。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

パターンプロバイダーは、[サブネット](../ae2-mechanics/subnetworks.md)のインターフェースと特別な働きをします: インターフェースが何も設定されていなければ、
プロバイダーはインターフェースを飛ばして、そのサブネットの[ストレージ](../ae2-mechanics/import-export-storage.md)に直接送ります。
インターフェースをレシピのまとまりで埋めることはなく、さらに大事なことに、ストレージに空きができるまで次のまとまりを入れません。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        インターフェース(フルブロックではなく平面にする)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        ストレージバス
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        パターンで送りたい場所(複数の機械か、1つの機械の複数の面)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## 種類

インターフェースには普通の形と平らな形([部品](../ae2-mechanics/cable-subparts.md))の2種類があります。どの面から入れ物を使えるか、
どの面でネットワークにつながるかが変わります。

*   普通のインターフェースは、全ての面から入れたり取り出したり入れ物を使ったりでき、AE2 のたいていの機械と同じく、
    ケーブルのように全ての面でネットワークにつながります。

*   平らなインターフェースは[ケーブルの部品](../ae2-mechanics/cable-subparts.md)なので、同じケーブルに複数付けられ、小さくまとめられます。
    表の面から入れたり取り出したり入れ物を使ったりできますが、表の面ではネットワークにつながりません。

クラフトグリッドで普通の形と平らな形を切り替えられます。

## 設定

インターフェースの上の段のスロットで、何を在庫にするかを決めます。そこに何かを置くか JEI/REI からドラッグすると、
レンチが出て量を設定できます。

液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体をフィルターに設定します。

スロットを在庫にする設定にすると、外部の機械がそのスロットに他のものを入れられなくなります。

## アップグレード

インターフェースは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます
*   <ItemLink id="crafting_card" /> で、欲しいアイテムを手に入れるために[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
    クラフトを依頼できます。新しくクラフトを依頼する前に、できればストレージから取り出します。

## 優先度

優先度は、GUI の右上にあるレンチを押して設定します。優先度の高いインターフェースが、低いものより先にアイテムを受け取ります。

## レシピ

<Recipe id="network/blocks/interfaces_interface" />

<RecipeFor id="cable_interface" />
