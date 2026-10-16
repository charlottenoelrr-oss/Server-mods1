---
navigation:
  title: 放射性ケミカルセル
  icon: radioactive_chemical_cell
  parent: index.md
  position: 050
categories:
  - megacells
item_ids:
  - radioactive_cell_component
  - radioactive_chemical_cell
---

# MEGA Cells: 放射性ケミカルセル

アドオン同士の幅広い連携の一環として、MEGA には *Mekanism* と ***Applied Mekanistics*** アドオンも使っているプレイヤーだけの、
2つ目の専門的なセルがあります。どちらも使っておらず、下のレシピがエラーになっているなら、このページは無視して、
このセルは無いものと思ってかまいません。

## 放射性ケミカルセル

<Row>
  <ItemImage id="radioactive_cell_component" scale="3" />
  <ItemImage id="radioactive_chemical_cell" scale="3" />
</Row>

**MEGA 放射性ケミカルセル** は、その名のとおり、*Applied Mekanistics* の普通のストレージセル(と MEGA の連携版)を補って、
*Mekanism* の「ケミカル」を保管するものです。普通のケミカルセルを使っていると、ある注意点に気づいたかもしれません:
*放射性*のケミカルは保管しないのです。Mekanism 本体では主に*核廃棄物*・*ポロニウム*・*プルトニウム*がそれにあたります。
もちろん、放射性セルは前述のケミカル*しか*保管しません。

<Row>
  <RecipeFor id="radioactive_cell_component" />
  <RecipeFor id="radioactive_chemical_cell" />
</Row>

放射性セルは、決まった1種類の放射性ケミカルしか保管できず、動かす前に区分けが必要な点で、<ItemLink id="megacells:bulk_item_cell" /> と
あまり変わりません。ただし、似ているのはそこまでです。放射性セルが保管できるのはそのケミカルの限られた量だけで、最大
*256 [バイト](ae2:ae2-mechanics/bytes-and-types.md)* です。とはいえ、これは1つのセルの中に *2048 バケツ*、
つまり核廃棄物バレル4つ分の放射性ケミカルに相当します。

![ポロニウムを入れた放射性セル](assets/diagrams/radioactive_cell.png)

そんな不安定な物質を閉じ込めて保管するため、このセルは(どうにかして!)比較的安定した状態に保つのに、かなり多くのエネルギーを
必要とします。<ItemLink id="ae2:item_storage_cell_1k" /> のふつうの消費電力 0.5 AE/tick、<ItemLink id="ae2:item_storage_cell_256k" /> の 2.5 AE/t、
<ItemLink id="megacells:item_storage_cell_256m" /> の 5 AE/t と比べて、放射性セルは ME チェストやドライブにつないでいる間、
1つでなんと **250 AE/tick** を消費します。

最後に、Mekanism のプレイヤーが本来のとおり核廃棄物をきちんと処理し続けるよう、放射性セルは***使用済み**核廃棄物*の保管を
はっきり禁じています。*初期設定では*、原子炉の施設の管理からそう簡単には逃れられません。それでも楽な道を選びたいプレイヤーのために、
この動きは設定で変えられます。*どう*設定するかは読者への宿題です。
