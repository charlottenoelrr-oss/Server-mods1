---
navigation:
  title: その他
  icon: mega_interface
  parent: index.md
  position: 060
categories:
  - megacells
item_ids:
  - mega_interface
  - cell_dock
  - portable_cell_workbench
---

# MEGA Cells: その他

アドオンの主な内容は説明したので、最後に、MEGA が一通りそろえるためと、少しの遊び心のために加えた、
小さな追加の機能を紹介します。

## MEGA インターフェース

<Row>
  <BlockImage id="mega_interface" scale="4" />
  <GameScene zoom="4" background="transparent">
    <ImportStructure src="assets/assemblies/cable_mega_interface.snbt" />
  </GameScene>
</Row>

<ItemLink id="megacells:mega_pattern_provider" /> と対になる **MEGA インターフェース** は、<ItemLink id="ae2:interface" /> の
容量2倍版です。スロットも2倍、入出力と処理量も2倍、在庫の管理も2倍です。

<RecipeFor id="mega_interface" />
<RecipeFor id="cable_mega_interface" />

## 携帯セル作業台

<ItemImage id="portable_cell_workbench" scale="4" />

このアドオンの他のものとは少し毛色が違い、**携帯セル作業台** は <ItemLink id="ae2:cell_workbench" /> の……*小さな*版です。
実際、手のひらに収まるほど小さいのに、どんなストレージセルでも普通に設定できます。

作業台が丸ごとどうやってこの中に収まったのか、不思議でなりません。

<RecipeFor id="portable_cell_workbench" />

## セルドック

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/cell_dock.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

最後に、またしても大きくではなく小さくなったものがあります。なので「MEGA」のアイテムと呼ぶのはかなり場違いに思えます。

**ME セルドック** は、ある意味 <ItemLink id="ae2:chest" /> をさらに小さくしたようなもので、一度に1つのストレージセルを
入れておけます。チェストの追加の機能(つまり内蔵のターミナル)はありませんが、小さなストレージとしては十分です。
特に、「平らな」[ケーブルの部品](ae2:ae2-mechanics/cable-subparts.md)の形なので、1本のケーブルの同じ1ブロックの空間に
複数のセルドックを付けられます。一時的な蓄えのストレージが要る小さなサブネットなどで役立つかもしれません。

<RecipeFor id="cell_dock" />

## 「昔のセルの色」

見た目の懐古趣味のおまけとして、MEGA には次のリソースパックが同梱されていて、好みで有効にできます。

![昔のセルの色のリソースパック](assets/diagrams/cell_colours_pack.png)

Minecraft 1.21 より前の AE2 とそのアドオンでは、ストレージセルの古いテクスチャは5段階の色の配色に沿っていて、
1k セルの赤茶色から始まり、黄・緑・青を経て、256k の薄い紫(ラベンダー)色で終わっていました。MEGA も自分のセルの段階で
この流れに沿い、1M の深い赤から始まって 256M の深い紫で終わっていました。

![古いセルのテクスチャ](assets/diagrams/cell_colours_old.png)

1.20.x 以降の AE2 で導入された大規模なテクスチャの刷新に合わせて、ストレージセルもより広い色の範囲を使うようになり、
AE2 の基本のストレージセルは段階が上がるにつれて青から緑へ、MEGA はそれに続いて黄から赤、ピンクへと進むようにしています。
これもなかなか良いのですが、今のものより昔の配色が好きな人のために、そちらも選べるようにしておくのも悪くないと考えました。

![AE2 のセルの色](assets/diagrams/cell_colours_ae2.png)
![MEGA のセルの色](assets/diagrams/cell_colours_mega.png)
