---
navigation:
  parent: example-setups/example-setups-index.md
  title: 再帰的なクラフト
  icon: minecraft:netherite_upgrade_smithing_template
---

# 再帰的なクラフトの仕組み

[自動クラフト](../ae2-mechanics/autocrafting.md)で述べたとおり、自動クラフトの計画の処理は、
主な完成品が材料の1つでもあるレシピを扱えません。例えば、<ItemLink id="minecraft:netherite_upgrade_smithing_template" /> の複製は扱えません。

解決法の1つは、<ItemLink id="level_emitter" /> の、[パターン](../items-blocks-machines/patterns.md)のふりをする機能を使うことです。

これで、そのクラフトをし続ける小さな仕組みをオンにします。ここでは、
<ItemLink id="minecraft:netherite_upgrade_smithing_template" /> を複製する仕組みを見てみます。

<RecipeFor id="minecraft:netherite_upgrade_smithing_template" />

***

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/recursive_recipe_setup.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) インターフェース: 追加で必要な材料(ダイヤモンドとネザーラック)を在庫にする。
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="minecraft:netherrack" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 1 0.3" max="2.7 1.3 0.7">
        (2) レベルエミッター: 「ネザライト強化の鍛冶型」を設定し、「アイテムをクラフトするためにレッドストーン信号を出す」にする。
        <Row><ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (3) インポートバス 1: インターフェースが在庫にするアイテムに絞り込む。レッドストーンカードを入れ、
        レッドストーンの動作を「信号があるときに動作」にする。
        <Row>
        <ItemImage id="minecraft:diamond" scale="2" />
        <ItemImage id="minecraft:netherrack" scale="2" />
        <ItemImage id="redstone_card" scale="2" />
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        (4) ストレージバス 1: もう1つのストレージバスより優先度を高くする。とても重要。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 0 1" max="4 1 2">
        (5) 分子組立機: 鍛冶型を複製するパターンを入れる。

        ![パターン](../assets/diagrams/smithing_template_pattern_small.png)

        最初に作るときに、鍛冶型を1つ手で入れておく。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        (6) インポートバス 2: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="2 1 1.3">
        (7) ストレージバス 2: 「ネザライト強化の鍛冶型」に絞り込む。もう1つのストレージバスより優先度を低くする。
        <ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="interface" />(1)は、追加で必要な材料(ダイヤモンドとネザーラック)を在庫にします。
* <ItemLink id="level_emitter" />(2)は「ネザライト強化の鍛冶型」を設定し、「アイテムをクラフトするためにレッドストーン信号を出す」にします。
* 1つ目の <ItemLink id="import_bus" />(3)は、インターフェースが在庫にするアイテムに絞り込みます。レッドストーンカードを入れ、レッドストーンの動作を「信号があるときに動作」にします。
* 1つ目の <ItemLink id="storage_bus" />(4)は、2つ目のストレージバスより[優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を*高く*します。
* <ItemLink id="molecular_assembler" />(5)には鍛冶型を複製するパターンを入れ、鍛冶型を1つ手で入れておきます。

  ![パターン](../assets/diagrams/smithing_template_pattern.png)

* 2つ目の <ItemLink id="import_bus" />(6)は初期の設定のままです。
* 2つ目の <ItemLink id="storage_bus" />(7)は「ネザライト強化の鍛冶型」に絞り込みます。1つ目のストレージバスより[優先度](../ae2-mechanics/import-export-storage.md#storage-priority)を*低く*します。

## しくみ

1. <ItemLink id="crafting_card" /> が入っていて「アイテムをクラフトするためにレッドストーン信号を出す」になっているので、<ItemLink id="level_emitter" /> は
   [パターン](../items-blocks-machines/patterns.md)のふりをします。そのため、「ネザライト強化の鍛冶型」が
   [ターミナル](../items-blocks-machines/terminals.md)に[自動クラフト](../ae2-mechanics/autocrafting.md)できるものとして表示されます。
2. プレイヤーかシステム自体からそのアイテムのクラフトを頼まれると、レベルエミッターがオンになります。
3. レベルエミッターで1つ目の <ItemLink id="import_bus" /> が動き、<ItemLink id="interface" /> の在庫の材料を取り出します。
4. その材料を保管できるネットワーク上の <ItemLink id="storage_bus" /> は、組立機に付いたものだけです。
5. <ItemLink id="molecular_assembler" /> が材料を受け取り(鍛冶型はすでに1つ入っている)、クラフトして鍛冶型を2つ作ります。
6. 2つ目の <ItemLink id="import_bus" /> が鍛冶型を1つ取り出します。
7. 1つ目のストレージバスのほうが優先度が高いので、その鍛冶型は組立機に戻ります。
8. 2つ目の <ItemLink id="import_bus" /> が鍛冶型をもう1つ取り出します。
9. 組立機はもう鍛冶型を受け取れないので、2つ目の鍛冶型は優先度の低いストレージバスへ行き、インターフェースに入ります。
10. <ItemLink id="interface" /> は鍛冶型を在庫にする設定になっていないので、それをネットワークに入れます。
