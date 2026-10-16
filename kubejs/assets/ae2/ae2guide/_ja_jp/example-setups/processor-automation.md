---
navigation:
  parent: example-setups/example-setups-index.md
  title: プロセッサの自動化
  icon: logic_processor
---

# プロセッサの生産の自動化

[プロセッサ](../items-blocks-machines/processors.md)を自動化する方法はたくさんあり、これはその1つです。

この全体の配置は、絞り込みができさえすれば、アイテム物流のパイプや導管やダクト(MODによって呼び名はいろいろ)の
どれでも作れます。

![処理の流れの図](../assets/diagrams/processor_flow_diagram.png)

ここでは、[「パイプ」のサブネット](pipe-subnet.md)を使って AE2 だけで作る方法を詳しく説明します。

<ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込む前提です。プロセッサだけを単独で自動化したいなら、パターンプロバイダーを樽に置き換え、上の樽に材料を直接入れてください。

この仕組みはたまたま以前の AE2 にも対応しています。<ItemLink id="inscriber" /> が面ごとに働きが違っても、
パイプのサブネットが正しい面に入れたり取り出したりするからです。

## パターンのエンコードの心得

エンコードする必要がある[パターン](../items-blocks-machines/patterns.md)は、**JEI で見えるものとは一致しない**ことがよくあります。JEI で + ボタンを押したときに出るものとも違います。
この場合、JEI は印刷部品の分と最後の組み立ての分の2つのパターンを出し、印刷部品のパターンには
[金型](../items-blocks-machines/presses.md)が入ります。この仕組みはそう動かないので、これは望むものではありません。欲しいのは、
素材を入れて完成したプロセッサが出る1つのパターンで、金型はすでに刻印機に入っているので、パターンには入れません。

---

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/processor_automation.snbt" />

  <BoxAnnotation color="#dddddd" min="5 1 0" max="6 2 1" thickness=".05">
        (1) パターンプロバイダー: 初期の設定のまま、該当する加工パターンを入れる。

        <Row>
            ![ロジックのパターン](../assets/diagrams/logic_pattern_small.png)
            ![計算のパターン](../assets/diagrams/calculation_pattern_small.png)
            ![エンジニアリングのパターン](../assets/diagrams/engineering_pattern_small.png)
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.7 2 0" max="5 3 1" thickness=".05">
        (2) ストレージバス 1: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="4.3 2 1" thickness=".05">
        (3) エクスポートバス 1: シリコンに絞り込み、加速カード2枚
        <Row><ItemImage id="silicon" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="4.3 3 1" thickness=".05">
        (4) エクスポートバス 2: 金インゴットに絞り込み、加速カード2枚
        <Row><ItemImage id="minecraft:gold_ingot" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="4.3 4 1" thickness=".05">
        (5) エクスポートバス 3: ケルタスクォーツの結晶に絞り込み、加速カード2枚
        <Row><ItemImage id="certus_quartz_crystal" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 6 0" max="4.3 5 1" thickness=".05">
        (6) エクスポートバス 4: ダイヤモンドに絞り込み、加速カード2枚
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 0" max="2 2 1" thickness=".05">
        (7) エクスポートバス 5: レッドストーンダストに絞り込み、加速カード2枚
        <Row><ItemImage id="minecraft:redstone" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="3 2 1" thickness=".05">
        (8) 刻印機 1: 初期の設定のまま。シリコンの金型と加速カード4枚
        <Row><ItemImage id="silicon_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 3 0" max="3 4 1" thickness=".05">
        (9) 刻印機 2: 初期の設定のまま。ロジックの金型と加速カード4枚
        <Row><ItemImage id="logic_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="3 5 1" thickness=".05">
        (10) 刻印機 3: 初期の設定のまま。計算の金型と加速カード4枚
        <Row><ItemImage id="calculation_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="3 6 1" thickness=".05">
        (11) 刻印機 4: 初期の設定のまま。エンジニアリングの金型と加速カード4枚
        <Row><ItemImage id="engineering_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 0" max="1 3 1" thickness=".05">
        (12) 刻印機 5: 初期の設定のまま。加速カード4枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 2 0" max="3 1 1" thickness=".05">
        (13) インポートバス 1: 初期の設定のまま、加速カード2枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 4 0" max="3 3 1" thickness=".05">
        (14) インポートバス 2: 初期の設定のまま、加速カード2枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 5 0" max="3 4 1" thickness=".05">
        (15) インポートバス 3: 初期の設定のまま、加速カード2枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 6 0" max="3 5 1" thickness=".05">
        (16) インポートバス 4: 初期の設定のまま、加速カード2枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 3 0" max="1 3.3 1" thickness=".05">
        (17) ストレージバス 2: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1.7 0" max="1 2 1" thickness=".05">
        (18) ストレージバス 3: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 0" max="0.7 3 1" thickness=".05">
        (19) インポートバス 5: 初期の設定のまま、加速カード2枚
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="5 0.7 0" max="6 1 1" thickness=".05">
        (20) ストレージバス 4: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.3 2.7 0.3" max="3.7 3 0.7" thickness=".05">
        刻印機はケーブルのように働いてエネルギーを伝えるので、クォーツファイバーで3台全部に電力が届く
  </BoxAnnotation>

<DiamondAnnotation pos="7 1.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="185" pitch="5" />
</GameScene>

## 設定

* <ItemLink id="pattern_provider" />(1)は初期の設定のまま、該当する <ItemLink id="processing_pattern" /> を入れます。
  パターンは素材から完成したプロセッサへ直接進み、[金型](../items-blocks-machines/presses.md)は**入れない**ことに注意してください。

  ![ロジックのパターン](../assets/diagrams/logic_pattern.png)
  ![計算のパターン](../assets/diagrams/calculation_pattern.png)
  ![エンジニアリングのパターン](../assets/diagrams/engineering_pattern.png)

* <ItemLink id="storage_bus" />(2、17、18、20)は初期の設定のままです。
* <ItemLink id="export_bus" />(3〜7)は該当する材料に絞り込みます。<ItemLink id="speed_card" /> を2枚入れます。
    <Row>
      <ItemImage id="silicon" scale="2" />
      <ItemImage id="minecraft:gold_ingot" scale="2" />
      <ItemImage id="certus_quartz_crystal" scale="2" />
      <ItemImage id="minecraft:diamond" scale="2" />
      <ItemImage id="minecraft:redstone" scale="2" />
    </Row>
* <ItemLink id="import_bus" />(13〜16、19)は初期の設定のままです。<ItemLink id="speed_card" /> を2枚入れます。
* <ItemLink id="inscriber" /> は初期の設定のままです。該当する[金型](../items-blocks-machines/presses.md)と
   <ItemLink id="speed_card" /> 4枚を入れます。
   <Row>
     <ItemImage id="silicon_press" scale="2" />
     <ItemImage id="logic_processor_press" scale="2" />
     <ItemImage id="calculation_processor_press" scale="2" />
     <ItemImage id="engineering_processor_press" scale="2" />
   </Row>

## しくみ

1. <ItemLink id="pattern_provider" /> が材料を樽に送ります。
2. 1つ目の[パイプのサブネット](pipe-subnet.md)(橙)が、シリコン、レッドストーンダスト、そのプロセッサの材料
   (金インゴット、ケルタスクォーツの結晶、ダイヤモンドのどれか)を樽から取り出し、該当する <ItemLink id="inscriber" /> に入れます。
3. 最初の4台の <ItemLink id="inscriber" /> が <ItemLink id="printed_silicon" /> と、<ItemLink id="printed_logic_processor" />・
   <ItemLink id="printed_calculation_processor" />・<ItemLink id="printed_engineering_processor" /> のどれかを作ります。
4. 2つ目と3つ目の[パイプのサブネット](pipe-subnet.md)(緑)が、最初の4台の <ItemLink id="inscriber" /> から印刷回路を取り出し、
    5台目の最後の組み立て用の <ItemLink id="inscriber" /> に入れます。
5. 5台目の <ItemLink id="inscriber" /> が[プロセッサ](../items-blocks-machines/processors.md)を組み立てます。
6. 4つ目の[パイプのサブネット](pipe-subnet.md)(紫)がプロセッサをパターンプロバイダーに入れ、メインのネットワークに戻します。
