---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: 消滅プレーン
  icon: annihilation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:annihilation_plane
---

# 消滅プレーン

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/annihilation_plane.snbt" />
</GameScene>

消滅プレーンはブロックを壊し、アイテムを拾います。<ItemLink id="import_bus" /> と同じように働き、ものを
[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に入れます。アイテムを拾うには、アイテムがプレーンの面に
触れる必要があります。範囲で拾うわけではありません。

消滅プレーンにはツルハシのエンチャントを何でも付けられます。つまり、MODパックが許すなら、いくつかにとんでもないレベルの幸運を付けて
[鉱石の処理を自動化](../example-setups/ore-fortuner.md)できます。さらに、シルクタッチは期待どおりに働き、効率強化はブロックを壊すエネルギーを減らし、
耐久力は一定の確率でエネルギーを使わなくなります。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

**土地保護MODを使っているなら、偽プレイヤー(FakePlayer)を許可するのを忘れずに**

## 絞り込み

消滅プレーンは、壊して落ちるものや拾うアイテムをネットワークに保管できるときだけ、ブロックを壊したりアイテムを拾ったりします。
つまり、絞り込むには*そのネットワークに保管できるものを制限する*必要があり、たいていは
[サブネット](../ae2-mechanics/subnetworks.md)に付けます。<ItemLink id="storage_bus" /> や[セル](../items-blocks-machines/storage_cells.md)を
[区分け](cell_workbench.md)すればそうできます。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/annihilation_filtering.snbt" />

  <DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        壊したいものから落ちるものに絞り込む。
  </DiamondAnnotation>

  <DiamondAnnotation pos=".5 0.5 2.5" color="#00ff00">
        壊したいものから落ちるものに区分けする。
  </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

繰り返しますが、絞り込みは*落ちるアイテムで*決まります。例えば <ItemLink id="minecraft:amethyst_cluster" /> だけを壊すように絞り込みたいなら、
シルクタッチを付けたプレーンが必要です。そうしないと、それより前の成長段階は何も落とさないので、ネットワークは常に「何も無い」を
保管できることになり、プレーンは何であれ壊してしまいます。

## レシピ

<RecipeFor id="annihilation_plane" />
