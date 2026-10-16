---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: MEドライブ
  icon: drive
  position: 210
categories:
- devices
item_ids:
- ae2:drive
---

# MEドライブ

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/drive.snbt" />
</GameScene>

ドライブは、[ストレージセル](storage_cells.md)を差し込んで[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)として
使うための[デバイス](../ae2-mechanics/devices.md)です。スロットが10個あり、それぞれにセルを1つ入れられます。

何かの理由でそうしたければ、ホッパーや AE2 のバスなど、どんなアイテム物流でもセルを出し入れできます。

<ItemLink id="certus_quartz_wrench" /> で回転できます。

## セルの状態ランプ

ドライブの中のセルには状態を示すランプがあります:

| 色  | 状態                                                                           |
| :----- | :------------------------------------------------------------------------------- |
| 緑  | 空                                                                            |
| 青   | 中身がある                                                                |
| 橙 | [種類](../ae2-mechanics/bytes-and-types.md)がいっぱいで、新しい種類を入れられない     |
| 赤    | [バイト](../ae2-mechanics/bytes-and-types.md)がいっぱいで、これ以上アイテムを入れられない |
| 黒  | 電力が無いか、ドライブに[チャンネル](../ae2-mechanics/channels.md)が無い                 |

## 優先度

優先度は、GUI の右上にあるレンチを押して設定します。
ネットワークに入るアイテムは、まず優先度の一番高いストレージを行き先にします。2つのストレージやセルの優先度が同じなら、
すでにそのアイテムが入っている方を優先します。[区分け](cell_workbench.md)したセルは、同じ優先度のグループの中では
すでにそのアイテムが入っているものとして扱われます。ストレージから取り出すアイテムは、優先度の一番低いストレージから
取り出されます。この優先度の仕組みにより、ネットワークのストレージにアイテムが出入りするにつれて、優先度の高いストレージが埋まり、
優先度の低いストレージが空いていきます。

## レシピ

<RecipeFor id="drive" />
