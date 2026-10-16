---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: エネルギーアクセプター
  icon: energy_acceptor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_acceptor
---

# エネルギーアクセプター

<Row gap="20">
<BlockImage id="energy_acceptor" scale="8" /> 

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
</GameScene>
</Row>

エネルギーアクセプターは、他の工業MODのよくある形のエネルギーを、AE2 の内部の[エネルギー](../ae2-mechanics/energy.md)である
AE に変換します。<ItemLink id="controller" /> でもできますが、コントローラーの面は貴重なので、たいていは
エネルギーアクセプターを使う方がよいでしょう。

Forge Energy と Techreborn Energy の変換比は次のとおりです

*   2 FE = 1 AE(Forge)
*   1 E  = 2 AE(Fabric)

変換の速さは、ネットワークに蓄えられる AE の量だけで決まります。理由は
[このページ](../ae2-mechanics/energy.md)で説明しています。

## 種類

エネルギーアクセプターには普通の形と平らな形([部品](../ae2-mechanics/cable-subparts.md))の2種類があります。これで仕組みをより小さくまとめられます。

クラフトグリッドで普通の形と平らな形を切り替えられます。

## レシピ

<RecipeFor id="energy_acceptor" />

<RecipeFor id="cable_energy_acceptor" />
