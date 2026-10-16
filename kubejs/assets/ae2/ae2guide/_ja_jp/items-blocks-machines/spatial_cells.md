---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 空間ストレージセル
  icon: spatial_storage_cell_128
  position: 410
categories:
- tools
item_ids:
- ae2:spatial_storage_cell_2
- ae2:spatial_storage_cell_16
- ae2:spatial_storage_cell_128
- ae2:spatial_cell_component_2
- ae2:spatial_cell_component_16
- ae2:spatial_cell_component_128
---

# 空間ストレージセル

  <Row>
    <ItemImage id="spatial_storage_cell_2" scale="4" />

    <ItemImage id="spatial_storage_cell_16" scale="4" />

    <ItemImage id="spatial_storage_cell_128" scale="4" />
  </Row>

空間ストレージセルは、[空間そのものを保管する](../ae2-mechanics/spatial-io.md)のに使います。
<ItemLink id="spatial_io_port" /> で使います。

[ストレージセル](../items-blocks-machines/storage_cells.md)と違い、空間セルは初期化し直せません。

繰り返しますが、**一度使った空間セルは、リセット・初期化し直し・大きさの変更ができません。** 違う大きさを使いたいなら新しいセルを作ってください。


## レシピ

  <Row>
    <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_16_cubed_storage" />

    <Recipe id="network/cells/spatial_storage_cell_128_cubed_storage" />
  </Row>

# ケース

セルは、空間部品とケースから作るか、空間部品の周りにケースのレシピを並べて作れます:

<Row>
  <Recipe id="network/cells/spatial_storage_cell_2_cubed" />

  <Recipe id="network/cells/spatial_storage_cell_2_cubed_storage" />
</Row>

ケースだけならこのように作ります:

  <RecipeFor id="item_cell_housing" />

# 空間部品

空間部品は空間ストレージセルの中核です。1段階上がるごとに、保管できる空間の大きさが8倍になります。

  <Row>
    <RecipeFor id="spatial_cell_component_2" />

    <RecipeFor id="spatial_cell_component_16" />

    <RecipeFor id="spatial_cell_component_128" />
  </Row>
