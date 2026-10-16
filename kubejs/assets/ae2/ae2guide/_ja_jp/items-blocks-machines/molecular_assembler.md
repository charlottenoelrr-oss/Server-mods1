---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 分子組立機
  icon: molecular_assembler
  position: 310
categories:
- machines
item_ids:
- ae2:molecular_assembler
---

# 分子組立機

<BlockImage id="molecular_assembler" scale="8" />

分子組立機は、入れられたアイテムを使い、隣の <ItemLink id="pattern_provider" /> が決める処理、または中に入れた
<ItemLink id="crafting_pattern" />・<ItemLink id="smithing_table_pattern" />・<ItemLink id="stonecutting_pattern" /> が決める処理をして、
完成品を隣の入れ物に送り出します。

この組立機には「オークの原木1個 = オークの板材4個」のレシピを決めたクラフトパターンが入っています。上のホッパーにオークの原木を入れると、
組立機がクラフトしてオークの板材を下のホッパーに吐き出します。

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/standalone_assembler.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 分子組立機の主な使い方

ただし、主な使い方は <ItemLink id="pattern_provider" /> の隣に置くことです。この場合パターンプロバイダーは特別な動きをし、
材料と一緒に該当するパターンの情報を隣の組立機に送ります。組立機はクラフトの完成品を隣の入れ物に自動で送り出す
(つまりパターンプロバイダーの返却スロットに入る)ので、パターンプロバイダーに組立機を付けるだけで
クラフトパターンを自動化できます。

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## アップグレード

分子組立機は次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="speed_card" />

## レシピ

<RecipeFor id="molecular_assembler" />

## 注意

Optifine は「隣の入れ物に送り出す」機能を壊すので、組立機を使ったクラフトの仕組みのほとんどが動かなくなります。
