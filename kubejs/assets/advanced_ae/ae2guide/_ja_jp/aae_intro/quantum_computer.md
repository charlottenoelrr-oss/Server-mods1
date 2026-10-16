---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 量子コンピューター
  icon: advanced_ae:quantum_core
categories:
  - advanced devices
item_ids:
  - advanced_ae:quantum_unit
  - advanced_ae:quantum_core
  - advanced_ae:quantum_structure
  - advanced_ae:quantum_accelerator
  - advanced_ae:quantum_multi_threader
  - advanced_ae:quantum_storage_128
  - advanced_ae:quantum_storage_256
  - advanced_ae:data_entangler
---

# 量子コンピューター

量子コンピューターは特別な種類のクラフト用コンピューターです。クラフトストレージが足りている限り、
無制限の数のクラフトの依頼を実行できます。

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../structure/quantum_computer_multiblock.snbt"></ImportStructure>
</GameScene>

## 量子コア

<BlockImage id="advanced_ae:quantum_core" p:powered="true" p:formed="true" scale="4"></BlockImage>

量子コアは量子コンピューターの心臓部です。単体で 256M のクラフトストレージと8つのコプロセッサのスレッドを持ちます。
単体で量子コンピューターとして完成させ、量子コンピューターの利点を全て得られる唯一のブロックです。ただし、複数ブロックの構造に
使えば、ずっと強力なコンピューターを作れます。単体のコンピューターとして使うときは、コネクタのある上か下の面から
電力を送る必要があります。

## 量子ストレージ

<Row gap="20">
<BlockImage id="advanced_ae:quantum_storage_128" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_storage_256" scale="4"></BlockImage>
</Row>

これらのブロックは量子コアのクラフトストレージを増やします。事実上、量子コンピューターが同時に実行できる作業の数を
増やします。容量 128M と 256M の2種類があります。

## 量子データもつれ装置

<BlockImage id="advanced_ae:data_entangler" scale="4"></BlockImage>

データもつれ装置は、複数ブロックの構造の中の全てのストレージのブロックに影響する特別なブロックです。ストレージのブロックが
いくつもの次元にデータを保管できるようにし、事実上その容量を4倍にします。1つの量子コンピューターの構造に置けるのは1つだけです。

## 量子加速器

<BlockImage id="advanced_ae:quantum_accelerator" scale="4"></BlockImage>

量子加速器は、量子コンピューターの構造にコプロセッサを8つ加えます。大事なのは、量子コンピューターが実行している
全てのクラフトのパターンが全てのコプロセッサを共有できることで、これをたくさん用意するとよいでしょう。

## 量子マルチスレッダー

<BlockImage id="advanced_ae:quantum_multi_threader" scale="4"></BlockImage>

データもつれ装置と同じように、マルチスレッダーは加速器が別の次元で追加のスレッドを実行できるようにし、
コプロセッサの処理能力を4倍にします。1つの量子コンピューターの構造に置けるのは1つだけです。

## 量子構造体

<Row gap="20">
<BlockImage id="advanced_ae:quantum_structure" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_structure" p:formed="true" p:powered="true" scale="4"></BlockImage>
</Row>

これらのブロックは量子コンピューターの枠組みになります。量子コンピューターの構成ブロックとして使い、
全体をつなぎます。

## 複数ブロックの構造

複数ブロックの量子コンピューターを作るには、いくつかの決まりを守る必要があります:
- 最大の大きさは 7x7x7(外側の寸法)です。
- 構造の中に空きがあってはいけません。空きは <ItemLink id="advanced_ae:quantum_unit" /> で埋められます
(追加の効果はありません)。
- <ItemLink id="advanced_ae:quantum_core" /> がちょうど1つ。
- <ItemLink id="advanced_ae:data_entangler" /> は多くても1つ。
- <ItemLink id="advanced_ae:quantum_multi_threader" /> は多くても1つ。
- 外側の層のブロックは全て <ItemLink id="advanced_ae:quantum_structure" /> であること。
- 内側のブロックに <ItemLink id="advanced_ae:quantum_structure" /> があってはいけません。

## サーバーの設定

サーバーの設定でいくつかの値を調整できます。例えば:
- 構造の最大の大きさ
- 量子加速器1つあたりのコプロセッサの数
- 量子マルチスレッダーの最大数
- マルチスレッダーのスレッドの倍率
- データもつれ装置の最大数
- データもつれ装置のストレージの倍率

あなたの環境での上限は、アイテムのツールチップで確かめられます。
