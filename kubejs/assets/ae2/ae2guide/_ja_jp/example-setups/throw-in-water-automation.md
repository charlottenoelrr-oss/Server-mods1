---
navigation:
  parent: example-setups/example-setups-index.md
  title: 水に投げ込む自動化
  icon: fluix_crystal
---

# 水に投げ込むレシピの自動化

<ItemLink id="pattern_provider" /> を使うので、[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みに
組み込む前提です。

レシピの中には、アイテムを水に投げ込む必要があるものがあります(同じような仕組みで、水以外の場所に投げ込むこともできます)。
これは <ItemLink id="formation_plane" /> と <ItemLink id="annihilation_plane" /> と、いくつかの支えになる
仕組みで自動化できます(要するに、[パイプのサブネット](pipe-subnet.md)を2つ少し変えたものです)。

この仕組みは、<ItemLink id="charged_certus_quartz_crystal" /> を用意する[チャージャーの自動化](charger-automation.md)と組み合わせて使う前提です。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (1) パターンプロバイダー: 初期の設定のまま、該当する加工パターンを入れる。

        ![フルーシュのパターン](../assets/diagrams/fluix_pattern_small.png) ![欠けた芽生えたケルタスのパターン](../assets/diagrams/flawed_budding_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 1" max="2 1 2">
        (2) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 .7 1" max="2 1 2">
        (3) 形成プレーン: 入力をアイテムとして落とす設定にする。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 2 1" max="2 2.3 2">
        (4) 消滅プレーン: 設定する GUI は無い。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (5) ストレージバス: パターンの完成品に絞り込む
        <Row><ItemImage id="fluix_crystal" scale="2" /><BlockImage id="flawless_budding_quartz" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="3.9 0.5 1.5" color="#00ff00">
        メインのネットワークとチャージャーの自動化へ
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
    </DiamondAnnotation>

  <IsometricCamera yaw="180" pitch="0" />
</GameScene>

## 設定とパターン

* <ItemLink id="pattern_provider" />(1)は初期の設定のまま、該当する <ItemLink id="processing_pattern" /> を入れます
  * <ItemLink id="fluix_crystal" /> は JEI/REI の標準のレシピでうまくいきます:

    ![フルーシュのパターン](../assets/diagrams/fluix_pattern.png)

  * <ItemLink id="flawed_budding_quartz" /> は <ItemLink id="quartz_block" /> から直接作るのがよいでしょう。
    あるレシピの材料が別のレシピの完成品になって、ストレージバスで絞り込めなくなる問題を避けられます:

    ![欠けた芽生えたケルタスのパターン](../assets/diagrams/flawed_budding_pattern.png)

* <ItemLink id="interface" />(2)は初期の設定のままです。
* <ItemLink id="formation_plane" />(3)は入力をアイテムとして落とす設定にします。
* <ItemLink id="annihilation_plane" />(4)は GUI が無く設定できません。
* <ItemLink id="storage_bus" />(5)はパターンの完成品に絞り込みます。

## しくみ

1.  <ItemLink id="pattern_provider" /> が、横にある緑のサブネットの <ItemLink id="interface" /> に材料を送ります
2.  インターフェース(初期状態では何も保管しない設定)は、中身を[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に入れようとします
3.  緑のサブネットのストレージは <ItemLink id="formation_plane" /> だけなので、プレーンが受け取ったアイテムを水に落とします
4.  橙のサブネットの <ItemLink id="annihilation_plane" /> は落ちたばかりのアイテムを拾おうとしますが、拾えません。
    パターンプロバイダーの上の <ItemLink id="storage_bus" />(橙のサブネットの唯一のストレージ)が、クラフトの完成品しか受け付けないよう絞り込まれているからです
5.  アイテムがワールドの中で変化します。
6.  ストレージバスが保管できるものになったので、消滅プレーンが前にあるアイテムを拾えるようになります。
7.  ストレージバスが完成品をパターンプロバイダーに入れ、ネットワークに戻します。
