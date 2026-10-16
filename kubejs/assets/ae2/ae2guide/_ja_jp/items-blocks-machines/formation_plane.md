---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 形成プレーン
  icon: formation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:formation_plane
---

# 形成プレーン

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/formation_plane.snbt" />
</GameScene>

形成プレーンはブロックを置き、アイテムを落とします。搬入専用の <ItemLink id="storage_bus" /> のように働き、
<ItemLink id="import_bus" /> や <ItemLink id="interface" /> など、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に入れる[デバイス](../ae2-mechanics/devices.md)によって
ものが「保管」されると、置いたり落としたりします。

<GameScene zoom="8" interactive={true}>
  <ImportStructure src="../assets/assemblies/formation_plane_demonstration.snbt" />
  <IsometricCamera yaw="255" pitch="30" />
</GameScene>

[パイプのサブネット](../example-setups/pipe-subnet.md)の、インポートバス -> ストレージバスや インターフェース -> ストレージバスのパイプに似ていることに注目してください。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

この[デバイス](../ae2-mechanics/devices.md)は、[パイプのサブネット](../example-setups/pipe-subnet.md)などでストレージバスが使う仕組みを利用しています。
アイテムを運ぶ代わりにアイテムを落としたりブロックを置いたりしたいなら、そうした仕組みのストレージバスと置き換えられます。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

**土地保護MODを使っているなら、偽プレイヤー(FakePlayer)を許可するのを忘れずに**

## 絞り込み

初期状態では、プレーンは何でも置いたり落としたりします。フィルターのスロットに入れたアイテムは許可リストとして働き、
そのアイテムだけを置けるようになります。

アイテムや液体は、実際に持っていなくても JEI/REI からスロットにドラッグできます。

液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体をフィルターに設定します。

## 優先度

優先度は、GUI の右上にあるレンチを押して設定します。
ネットワークに入るアイテムは、まず優先度の一番高いストレージへ行きます。

## 設定

*   プレーンは、ワールドにブロックを置くか、アイテムを落とすかを設定できます

## アップグレード

形成プレーンは次の[アップグレード](upgrade_cards.md)に対応しています:

*   <ItemLink id="capacity_card" /> はフィルターのスロットを増やします
*   <ItemLink id="fuzzy_card" /> で、損傷の度合いで絞り込んだり、アイテムの NBT を無視したりできます
*   <ItemLink id="inverter_card" /> でフィルターを許可リストから拒否リストに切り替えます

## レシピ

<RecipeFor id="formation_plane" />
