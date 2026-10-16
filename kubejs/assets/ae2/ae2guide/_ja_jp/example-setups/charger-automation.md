---
navigation:
  parent: example-setups/example-setups-index.md
  title: チャージャーの自動化
  icon: charger
---

# チャージャーの自動化

これは <ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込むためのものです。<ItemLink id="charger" /> だけを単独で自動化したいなら、ホッパーやチェストなどを使いましょう。

<ItemLink id="charger" /> の自動化はかなり簡単です。<ItemLink id="pattern_provider" /> が材料をチャージャーに送り、[パイプのサブネット](pipe-subnet.md)
か他のアイテムのパイプが完成品をプロバイダーに戻します。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/charger_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) パターンプロバイダー: 初期の設定のまま、関係する処理パターンを入れる。チャージャーに電力も送る。

        ![Charger Pattern](../assets/diagrams/charger_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="1 1.3 1">
        (2) インポートバス: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (3) ストレージバス: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="pattern_provider" />(1)は初期の設定のまま、関係する <ItemLink id="processing_pattern" /> を入れます。
  [ケーブル](../items-blocks-machines/cables.md)のように働くので、<ItemLink id="charger" /> に[エネルギー](../ae2-mechanics/energy.md)も送ります。
  
    ![Charger Pattern](../assets/diagrams/charger_pattern.png)

* <ItemLink id="import_bus" />(2)は初期の設定のままです。
* <ItemLink id="storage_bus" />(3)は初期の設定のままです。

## しくみ

1. <ItemLink id="pattern_provider" /> が材料を <ItemLink id="charger" /> に送ります。
2. チャージャーがチャージします。
3. 緑のサブネットの <ItemLink id="import_bus" /> が完成品をチャージャーから取り出し、
   [ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に保管しようとします。
4. 緑のサブネットのストレージは <ItemLink id="storage_bus" /> だけなので、完成品はパターンプロバイダーに保管され、メインのネットワークに戻ります。
