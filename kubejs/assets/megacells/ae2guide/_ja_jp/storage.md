---
navigation:
  title: ストレージ
  icon: item_storage_cell_256m
  parent: index.md
  position: 010
categories:
  - megacells
item_ids:
  - cell_component_1m
  - cell_component_4m
  - cell_component_16m
  - cell_component_64m
  - cell_component_256m
  - mega_item_cell_housing
  - mega_fluid_cell_housing
  - mega_chemical_cell_housing
  - mega_source_cell_housing
  - mega_mana_cell_housing
  - mega_experience_cell_housing
  - item_storage_cell_1m
  - item_storage_cell_4m
  - item_storage_cell_16m
  - item_storage_cell_64m
  - item_storage_cell_256m
  - fluid_storage_cell_1m
  - fluid_storage_cell_4m
  - fluid_storage_cell_16m
  - fluid_storage_cell_64m
  - fluid_storage_cell_256m
  - chemical_storage_cell_1m
  - chemical_storage_cell_4m
  - chemical_storage_cell_16m
  - chemical_storage_cell_64m
  - chemical_storage_cell_256m
  - source_storage_cell_1m
  - source_storage_cell_4m
  - source_storage_cell_16m
  - source_storage_cell_64m
  - source_storage_cell_256m
  - mana_storage_cell_1m
  - mana_storage_cell_4m
  - mana_storage_cell_16m
  - mana_storage_cell_64m
  - mana_storage_cell_256m
  - experience_storage_cell_1m
  - experience_storage_cell_4m
  - experience_storage_cell_16m
  - experience_storage_cell_64m
  - experience_storage_cell_256m
  - portable_item_cell_1m
  - portable_item_cell_4m
  - portable_item_cell_16m
  - portable_item_cell_64m
  - portable_item_cell_256m
  - portable_fluid_cell_1m
  - portable_fluid_cell_4m
  - portable_fluid_cell_16m
  - portable_fluid_cell_64m
  - portable_fluid_cell_256m
  - portable_chemical_cell_1m
  - portable_chemical_cell_4m
  - portable_chemical_cell_16m
  - portable_chemical_cell_64m
  - portable_chemical_cell_256m
  - portable_source_cell_1m
  - portable_source_cell_4m
  - portable_source_cell_16m
  - portable_source_cell_64m
  - portable_source_cell_256m
  - portable_mana_cell_1m
  - portable_mana_cell_4m
  - portable_mana_cell_16m
  - portable_mana_cell_64m
  - portable_mana_cell_256m
  - portable_experience_cell_1m
  - portable_experience_cell_4m
  - portable_experience_cell_16m
  - portable_experience_cell_64m
  - portable_experience_cell_256m
  - sky_bronze_ingot
  - sky_bronze_block
  - sky_osmium_ingot
  - sky_osmium_block
---

# MEGA Cells: ストレージ

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/drive_cells.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

## MEGA の[ストレージセル](ae2:items-blocks-machines/storage_cells.md)

<Row>
  <ItemImage id="mega_item_cell_housing" scale="4" />
  <ItemImage id="item_storage_cell_1m" scale="4" />
  <ItemImage id="item_storage_cell_4m" scale="4" />
  <ItemImage id="item_storage_cell_16m" scale="4" />
  <ItemImage id="item_storage_cell_64m" scale="4" />
  <ItemImage id="item_storage_cell_256m" scale="4" />
</Row>

前に述べたとおり、<ItemLink id="megacells:accumulation_processor" /> は MEGA の設備を組み立てる最初の一歩で、
その手始めがさらに上の段階のストレージセルです。このプロセッサを使えば、<ItemLink id="ae2:cell_component_256k" /> を
*さらにその先*へ、**1M**(「1024k」に相当)から一番上の M の段階の **256M** まで進められます。256k の*千倍*以上の容量です。

<RecipeFor id="cell_component_1m" />
<RecipeFor id="cell_component_4m" />
<RecipeFor id="cell_component_16m" />
<RecipeFor id="cell_component_64m" />
<RecipeFor id="cell_component_256m" />

もちろん、性能の高いストレージにはそれに見合うケースも必要です。そこでさらにスカイスチールを使い、
新しい M 段階の部品用のアイテムセルのケースを作ります。

<Row>
  <RecipeFor id="mega_item_cell_housing" />
  <Recipe id="cells/standard/item_storage_cell_1m" />
  <Recipe id="cells/standard/item_storage_cell_1m_with_housing" />
</Row>

液体やそれ以外の全てのものにも、専用のケースがあります。実はスカイストーンは十分に強力で、他の金属と合金にして
それぞれのセルを作れます。例えば銅と合わせた **スカイブロンズ** で液体セルのケースを作ります。このガイドに無いものでも、
思いつくものは何でも、専用のケースの種類を持つ専用のセルとして MEGA が対応しているかもしれません。

<Row>
  <ItemImage id="sky_bronze_ingot" scale="4" />
  <ItemImage id="mega_fluid_cell_housing" scale="4" />
  <ItemImage id="fluid_storage_cell_1m" scale="4" />
  <ItemImage id="fluid_storage_cell_4m" scale="4" />
  <ItemImage id="fluid_storage_cell_16m" scale="4" />
  <ItemImage id="fluid_storage_cell_64m" scale="4" />
  <ItemImage id="fluid_storage_cell_256m" scale="4" />
</Row>

<Row>
  <Recipe id="transform/sky_bronze_ingot" />
  <RecipeFor id="mega_fluid_cell_housing" />
</Row>

<a name="portable-cells"></a>

## MEGA の[携帯セル](ae2:items-blocks-machines/storage_cells.md#portable-item-storage)

MEGA も AE2 本体と同じく、全てのセルの携帯版を用意していますが、容量が増えた分、エネルギーもかなり多く必要です。
そのため、普通の <ItemLink id="ae2:energy_cell" /> ではなく <ItemLink id="ae2:dense_energy_cell" /> を使って作ることに注意してください。

これらの携帯セルも、普通の ME 携帯セルと同じ全ての[アップグレード](ae2:items-blocks-machines/upgrade_cards.md)に対応しますが、
電池が大きく全体に電力を食うので、普通の <ItemLink id="ae2:energy_card" /> では*少し*力不足です。
そのため、<ItemLink id="megacells:greater_energy_card" /> だけが使えます。

<Row>
  <RecipeFor id="portable_item_cell_1m" />
</Row>
