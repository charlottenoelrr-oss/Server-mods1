---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ストレージセル
  icon: item_storage_cell_1k
  position: 410
categories:
- tools
item_ids:
- ae2:item_cell_housing
- ae2:fluid_cell_housing
- ae2:cell_component_1k
- ae2:cell_component_4k
- ae2:cell_component_16k
- ae2:cell_component_64k
- ae2:cell_component_256k
- ae2:item_storage_cell_1k
- ae2:item_storage_cell_4k
- ae2:item_storage_cell_16k
- ae2:item_storage_cell_64k
- ae2:item_storage_cell_256k
- ae2:fluid_storage_cell_1k
- ae2:fluid_storage_cell_4k
- ae2:fluid_storage_cell_16k
- ae2:fluid_storage_cell_64k
- ae2:fluid_storage_cell_256k
---

# ストレージセル

<Column>
  <Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

  <Row>
    <ItemImage id="fluid_storage_cell_1k" scale="4" />

    <ItemImage id="fluid_storage_cell_4k" scale="4" />

    <ItemImage id="fluid_storage_cell_16k" scale="4" />

    <ItemImage id="fluid_storage_cell_64k" scale="4" />

    <ItemImage id="fluid_storage_cell_256k" scale="4" />
  </Row>
</Column>

ストレージセルは Applied Energistics の主な保管方法の1つです。<ItemLink id="drive" /> や <ItemLink id="chest" /> に入れます。

バイトと種類で表す容量の説明は[バイトと種類](../ae2-mechanics/bytes-and-types.md)を見てください。

セルが空なら、セルを手に持ってシフト+右クリックすると、ストレージ部品をケースから外せます。

<Row>
    <Recipe id="upgrade/item_storage_cell_1k_to_4k" />

    ストレージセルは、クラフトグリッドで上の段階のストレージ部品と組み合わせると、上の段階に強化できます。中身は残り、下の段階の部品が戻ってきます。
</Row>

## 種類の数による保管容量の違い

[種類ごとの先払いのコスト](../ae2-mechanics/bytes-and-types.md)があるので、1種類だけ入れたセルは、63種類全部を使ったセルの2倍入ります。

| セル                                     | 1種類のときのセルの総容量 | 63種類のときのセルの総容量 |
| ---------------------------------------- | ----------------------------------------: | ------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                     8,128 |                                       4,160 |
| <ItemLink id="item_storage_cell_4k" />   |                                    32,512 |                                      16,640 |
| <ItemLink id="item_storage_cell_16k" />  |                                   130,048 |                                      66,560 |
| <ItemLink id="item_storage_cell_64k" />  |                                   520,192 |                                     266,240 |
| <ItemLink id="item_storage_cell_256k" /> |                                 2,080,768 |                                   1,064,960 |


## 区分け

セルは、<ItemLink id="storage_bus" /> と同じように、特定のアイテムだけを受け付けるよう絞り込めます。これは
<ItemLink id="cell_workbench" /> で行います。

アイテムは、実際に持っていなくても JEI/REI からスロットにドラッグできます。

## アップグレード

ストレージセルは次の[アップグレード](upgrade_cards.md)に対応し、<ItemLink id="cell_workbench" /> で入れます:

*   <ItemLink id="fuzzy_card" />(液体のセルには使えません)で、損傷の度合いで区分けしたり、アイテムの NBT を無視したりできます
*   <ItemLink id="inverter_card" /> でフィルターを許可リストから拒否リストに切り替えます
*   <ItemLink id="equal_distribution_card" /> は、各種類に同じ量のバイトの領域を割り当て、1種類でセル全体が埋まらないようにします
*   <ItemLink id="void_card" /> は、セルがいっぱい(均等分配カードがあれば、その種類に割り当てた領域がいっぱい)のときに
    入れたアイテムを消し、農場が詰まるのを防ぐのに便利です。必ず区分けしてください!
*   携帯セルには <ItemLink id="energy_card" /> を入れて電池の容量を増やせます

## 色付け

アイテムと液体の携帯セルは、革の防具と同じように、染料と一緒にクラフトして色を付けられます。

# ケース

セルは、ストレージ部品とケースから作るか、ストレージ部品の周りにケースのレシピを並べて作れます:

<Row>
  <Recipe id="network/cells/item_storage_cell_1k" />

  <Recipe id="network/cells/item_storage_cell_1k_storage" />
</Row>

ケースだけならこのように作ります:

<Row>
  <RecipeFor id="item_cell_housing" />

  <RecipeFor id="fluid_cell_housing" />
</Row>

# ストレージ部品

ストレージ部品は全ての AE2 のセルの中核で、セルの容量を決めます。1段階上がるごとに容量が4倍になり、
1つ下の段階のもの3つが必要です。

<Column>
  <Row>
    <RecipeFor id="cell_component_1k" />

    <RecipeFor id="cell_component_4k" />

    <RecipeFor id="cell_component_16k" />
  </Row>

  <Row>
    <RecipeFor id="cell_component_64k" />

    <RecipeFor id="cell_component_256k" />
  </Row>
</Column>

# アイテムのストレージセル

アイテムのストレージセルは最大63種類のアイテムを保管でき、標準の全ての容量があります。

<Column>
  <Row>
    <Recipe id="network/cells/item_storage_cell_1k_storage" />

    <Recipe id="network/cells/item_storage_cell_4k_storage" />

    <Recipe id="network/cells/item_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/item_storage_cell_64k_storage" />

    <Recipe id="network/cells/item_storage_cell_256k_storage" />
  </Row>
</Column>

<a name="portable-item-storage"></a>

## 携帯アイテムストレージ

ポケットに入る小さな <ItemLink id="chest" />、またはリュックのようなものとして働きます。<ItemLink id="charger" /> で充電できます

普通のストレージセルと違い、バイトの容量が増えるほど種類の容量は*減り*、バイトの総容量も半分です。

全てのセルに入れられるアップグレードカードに加えて、<ItemLink id="energy_card" /> を入れて内蔵の電池を強化できます。

<Column>
  <Row>
    <RecipeFor id="portable_item_cell_1k" />

    <RecipeFor id="portable_item_cell_4k" />

    <RecipeFor id="portable_item_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_item_cell_64k" />

    <RecipeFor id="portable_item_cell_256k" />
  </Row>
</Column>

# 液体のストレージセル

液体のストレージセルは最大5種類の液体を保管でき、標準の全ての容量があります。

<Column>
  <Row>
    <Recipe id="network/cells/fluid_storage_cell_1k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_4k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/fluid_storage_cell_64k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_256k_storage" />
  </Row>
</Column>

## 携帯液体ストレージ

ポケットに入る小さな <ItemLink id="chest" />、またはリュックのようなものとして働きます。<ItemLink id="charger" /> で充電できます

普通のストレージセルと違い、バイトの容量が増えるほど種類の容量は*減り*、バイトの総容量も半分です。

全てのセルに入れられるアップグレードカードに加えて、<ItemLink id="energy_card" /> を入れて内蔵の電池を強化できます。

<Column>
  <Row>
    <RecipeFor id="portable_fluid_cell_1k" />

    <RecipeFor id="portable_fluid_cell_4k" />

    <RecipeFor id="portable_fluid_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_fluid_cell_64k" />

    <RecipeFor id="portable_fluid_cell_256k" />
  </Row>
</Column>

# クリエイティブストレージセル

<Row>
  <ItemImage id="creative_storage_cell" scale="2" />
</Row>

クリエイティブセルは**無限のストレージにはなりません**。代わりに、[区分け](cell_workbench.md)したアイテムや液体の
無限の供給源と吸い込み口として働きます。
