---
navigation:
  parent: example-setups/example-setups-index.md
  title: かまどの自動化
  icon: minecraft:furnace
---

# かまどの自動化

これは <ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込むためのものです。かまどだけを単独で自動化したいなら、ホッパーやチェストなどを使いましょう。

<ItemLink id="minecraft:furnace" /> の自動化は、[チャージャー](../example-setups/charger-automation.md)のような簡単な機械の自動化より少し複雑です。
かまどは2つの別々の面から入力し、3つ目の面から取り出す必要があります。焼くアイテムは上の面から、
燃料は横の面から入れ、完成品は下から取り出さなければなりません。

上に <ItemLink id="pattern_provider" />、
横に燃料を入れ続ける <ItemLink id="export_bus" />、下に完成品をネットワークに搬入する <ItemLink id="import_bus" /> を
付けてもできます。ですが、これでは[チャンネル](../ae2-mechanics/channels.md)を3つ使います。

1チャンネルだけでやる方法はこうです:

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) パターンプロバイダー: ケルタスクォーツのレンチで方向指定にし、関係する処理パターンを入れる。

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) ストレージバス1: 石炭に絞り込む。
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) ストレージバス2: 反転カードを使い、石炭を除外するよう絞り込む。
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="pattern_provider" />(1)は初期の設定のまま、関係する <ItemLink id="processing_pattern" /> を入れます。
    <ItemLink id="certus_quartz_wrench" /> を使って方向指定にします。

  ![Iron Pattern](../assets/diagrams/furnace_pattern.png)

* <ItemLink id="interface" />(2)は初期の設定のままです。
* 1つ目の <ItemLink id="storage_bus" />(3)は、石炭か使いたい燃料に絞り込みます。
* 2つ目の <ItemLink id="storage_bus" />(4)は、<ItemLink id="inverter_card" /> を使って、使っている燃料を除外するよう絞り込みます。

## しくみ

1. <ItemLink id="pattern_provider" /> が材料を <ItemLink id="interface" /> に送ります。
   (実際には最適化のため、ストレージバスをプロバイダーの面の延長のように使って直接送ります。アイテムが実際にインターフェースに入ることはありません。)
2. インターフェースは何も保たない設定なので、材料を[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に送ろうとします。
3. 緑のサブネットのストレージは <ItemLink id="storage_bus" /> だけです。石炭に絞り込んだバスは、横の面から石炭をかまどの燃料のスロットに入れます。
    石炭以外に絞り込んだバスは、上の面から焼くアイテムを上のスロットに入れます。
4. かまどが焼きます
5. ホッパーが完成品をかまどの下から取り出し、プロバイダーの返却スロットに入れて、メインのネットワークに戻します。
