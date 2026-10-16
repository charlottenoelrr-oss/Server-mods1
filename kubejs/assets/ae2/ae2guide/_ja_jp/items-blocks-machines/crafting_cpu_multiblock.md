---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: クラフトCPU
  icon: 1k_crafting_storage
  position: 210
categories:
- devices
item_ids:
- ae2:1k_crafting_storage
- ae2:4k_crafting_storage
- ae2:16k_crafting_storage
- ae2:64k_crafting_storage
- ae2:256k_crafting_storage
- ae2:crafting_accelerator
- ae2:crafting_monitor
- ae2:crafting_unit
---

# クラフトCPU

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="crafting_accelerator" scale="4" />

  <BlockImage id="crafting_monitor" scale="4" />

  <BlockImage id="crafting_unit" scale="4" />
</Row>

クラフトCPU はクラフトの依頼(作業)を管理します。何段階もあるクラフトの作業をしている間、途中の材料を保管し、
扱える作業の大きさと、ある程度は作業の速さを決めます。詳しくは[自動クラフト](../ae2-mechanics/autocrafting.md)を見てください。

1つのクラフトCPU が扱うのは1つの依頼(作業)なので、計算プロセッサと滑らかな石 256 個を同時に頼みたいなら、CPU の複数ブロック構造が2つ必要です。

プレイヤーからの依頼、自動化(エクスポートバスやインターフェース)からの依頼、またはその両方を扱うように設定できます。

右クリックするとクラフトの状況の画面が開き、その CPU が扱っている作業の進み具合を確かめられます。

## 設定

*   CPU は、プレイヤーからの依頼だけ、自動化(<ItemLink id="crafting_card" /> 入りの <ItemLink id="export_bus" /> など)からの依頼だけ、
    またはその両方を受けるように設定できます。

## 組み立て

クラフトCPU は複数ブロックの構造で、すき間の無い直方体である必要があります。いくつかの部品でできています。

どの CPU にもクラフトストレージのブロックが少なくとも1つ必要です(実は、一番小さな CPU は 1k クラフトストレージ1つだけです)。

# クラフトユニット

<BlockImage id="crafting_unit" scale="4" />

(任意)クラフトユニットは、他の部品が足りないときに、CPU を直方体にするためにすき間を埋めるだけのものです。
他の部品の基本の材料にもなります。

<RecipeFor id="crafting_unit" />

<a name="crafting-storage"></a>

# クラフトストレージ

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="4k_crafting_storage" scale="4" />

  <BlockImage id="16k_crafting_storage" scale="4" />

  <BlockImage id="64k_crafting_storage" scale="4" />

  <BlockImage id="256k_crafting_storage" scale="4" />
</Row>

(必須)クラフトストレージには標準のセルと同じ大きさ(1k、4k、16k、64k、256k)があります。クラフトに関わる材料と
途中の材料を保管するので、材料の多いクラフトの作業を扱うには、大きなストレージや多くのストレージが必要です。

<Column>
  <Row>
    <RecipeFor id="1k_crafting_storage" />

    <RecipeFor id="4k_crafting_storage" />

    <RecipeFor id="16k_crafting_storage" />
  </Row>

  <Row>
    <RecipeFor id="64k_crafting_storage" />

    <RecipeFor id="256k_crafting_storage" />
  </Row>
</Column>

# クラフト・コプロセッサユニット

<BlockImage id="crafting_accelerator" scale="4" />

(任意)クラフト・コプロセッサは CPU の処理を速め、<ItemLink id="pattern_provider" /> から材料のひとまとまりをより頻繁に送り出させます。
これで、処理の速い機械に追いつけます。例えば、<ItemLink id="molecular_assembler" /> に囲まれたパターンプロバイダーは、
1台の組立機が処理するより速く材料を送り、周りの組立機に材料のまとまりを振り分けられます。

複雑なレシピには、本棚を作るために板材と本を同時に作るなど、並行してできる段階がいくつもあるものがあります。
クラフトの状況の画面(CPU を右クリックするか、[ターミナル](terminals.md)のハンマーのアイコンで見られます)では、
これらの段階は全て「予定」と表示されます。コプロセッサが1つ増えるごとに、並行してできる段階が1つ増えます(「クラフト中」と表示されます)。
ただ、普通は送り出しの速さのためだけにコプロセッサを、レシピの並行できる段階の数より多く置くので、こちらはあまり気にしなくてよいでしょう。

<RecipeFor id="crafting_accelerator" />

# クラフトモニター

<BlockImage id="crafting_monitor" scale="4" />

(任意)クラフトモニターは、CPU が今扱っている作業を表示します。
画面は <ItemLink id="color_applicator" /> で色を付けられます。

<RecipeFor id="crafting_monitor" />
