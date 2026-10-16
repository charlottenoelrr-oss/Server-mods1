---
navigation:
  title: MEGA の自動クラフト
  icon: 256m_crafting_storage
  parent: index.md
  position: 020
categories:
  - megacells
item_ids:
  - mega_crafting_unit
  - 1m_crafting_storage
  - 4m_crafting_storage
  - 16m_crafting_storage
  - 64m_crafting_storage
  - 256m_crafting_storage
  - mega_crafting_accelerator
  - mega_crafting_monitor
  - mega_pattern_provider
  - cable_mega_pattern_provider
---

# MEGA Cells: 自動クラフト

<GameScene zoom="6" background="transparent">
  <ImportStructure src="assets/assemblies/crafting_cpu.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

## MEGA の[クラフトCPU](ae2:items-blocks-machines/crafting_cpu_multiblock.md)

<Row>
  <BlockImage id="mega_crafting_unit" scale="4" />
  <BlockImage id="1m_crafting_storage" scale="4" />
  <BlockImage id="4m_crafting_storage" scale="4" />
  <BlockImage id="16m_crafting_storage" scale="4" />
  <BlockImage id="64m_crafting_storage" scale="4" />
  <BlockImage id="256m_crafting_storage" scale="4" />
</Row>

ストレージセルと同じく、MEGA はクラフトCPU 用にも大きな段階のストレージを加えます。これらも力が増す分、
専用の <ItemLink id="ae2:crafting_unit" /> が必要ですが、記憶容量が多いので一番大きなクラフトの作業でも楽にこなし、
しかも黒くて*めちゃくちゃかっこいい*見た目です。

<RecipeFor id="mega_crafting_unit" />
<RecipeFor id="1m_crafting_storage" />
<RecipeFor id="4m_crafting_storage" />
<RecipeFor id="16m_crafting_storage" />
<RecipeFor id="64m_crafting_storage" />
<RecipeFor id="256m_crafting_storage" />

おまけとして、MEGA は <ItemLink id="ae2:crafting_accelerator" /> にあたるものも加えます。こちらはコプロセッサのブロック1つで、
1つではなく*4つ*の並行処理のスレッドを持つのが利点です。

<BlockImage id="mega_crafting_accelerator" scale="4" />
<RecipeFor id="mega_crafting_accelerator" />

そして一通りそろえるために、<ItemLink id="ae2:crafting_monitor" /> にあたる MEGA 版もあります。
働きは普通のモニターとまったく変わりませんが、前述のユニットと見た目をそろえ、CPU の複数ブロック構造全体を
同じすっきりした黒い見た目にしたい人のためのものです。

<BlockImage id="mega_crafting_monitor" scale="4" />
<RecipeFor id="mega_crafting_monitor" />

## MEGA パターンプロバイダー

<Row>
  <BlockImage id="mega_pattern_provider" scale="4" />
  <GameScene zoom="4" background="transparent">
    <ImportStructure src="assets/assemblies/cable_mega_pattern_provider.snbt" />
  </GameScene>
</Row>

<ItemLink id="ae2:pattern_provider" /> の仲間である **MEGA パターンプロバイダー** は、AE2 のデバイスの大きな版を加えるという
流れのとおり、パターンの容量を2倍にし、合計18個のパターンを入れて扱えます。ただし、その代わりに
[**加工パターン**](ae2:items-blocks-machines/patterns.md)しか入れられないので、
<ItemLink id="ae2:molecular_assembler" /> とはうまく使えません。

<Row>
  <RecipeFor id="mega_pattern_provider" />
  <RecipeFor id="cable_mega_pattern_provider" />
</Row>
