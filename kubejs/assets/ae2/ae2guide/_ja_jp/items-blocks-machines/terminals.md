---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: ターミナル
  icon: crafting_terminal
  position: 210
categories:
- devices
item_ids:
- ae2:terminal
- ae2:crafting_terminal
- ae2:pattern_encoding_terminal
- ae2:pattern_access_terminal
---

# ターミナル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminals.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="pattern_provider" />・<ItemLink id="import_bus" />・<ItemLink id="storage_bus" /> などが、AE2 のネットワークが
ワールドとやりとりする主な手段であるのに対し、ターミナルは AE2 のネットワークが*あなた*とやりとりする主な手段です。
働きの違ういくつかの種類があります。

ターミナルは、付けた[ケーブル](cables.md)の色を受け継ぎます。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

## ターミナルの置き方

ターミナルは最初に置く[部品](../ae2-mechanics/cable-subparts.md)になることが多いので、
間違えて逆向きに置いてしまうことがよくあります。良い例と悪い例を示します:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/terminal_placement.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <LineAnnotation color="#ff3333" from="2.5 .5 .5" to="4.5 2.5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="2.5 2.5 .5" to="4.5 .5 .5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="-.5 2.5 .5" to="1 .5 .5" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1 .5 .5" to="1.5 1 .5" alwaysOnTop={true} thickness="0.05"/>
</GameScene>

ターミナルとエネルギーアクセプターがあるのは同じですが、今度はターミナルが正しい向きで、実際にネットワークにつながっていて、
しかも全体がより小さく収まっています。

<a name="terminal-ui"></a>

# ターミナルの検索

検索欄には正規表現を使えるので、例えば「gtceu:.*ore」と書けば Gregtech の鉱石が全て出ます。正規表現の
勉強は読者への宿題です。

# ターミナル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

基本のターミナルで、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)の中身を見たり使ったりでき、
[自動クラフト](../ae2-mechanics/autocrafting.md)の仕組みにものを依頼できます。

## 画面

基本のターミナルの画面にはいくつかの部分があります

中央の部分でネットワークのストレージを使えます。ものを入れたり取り出したりできます。マウスやキーの操作がいくつかあります:

*   左クリックで1スタック、右クリックで半スタックをつかみます。
*   アイテムや液体などが[自動クラフト](../ae2-mechanics/autocrafting.md)できるなら、
    「ブロックを選択」に割り当てたキー(たいていはホイールクリック)で、クラフトする数を指定する画面が出ます。`3*64/2` のような式も入力でき、
    `=32` と入力すると、ストレージの数が32になるのに必要な分だけクラフトします。
*   シフトを押している間は表示中のアイテムが固定され、数が変わったり新しいアイテムが入ってきたりしても並び替わりません。
*   バケツなどの液体の入れ物を持って右クリックすると液体を入れ、空の液体の入れ物を持ってターミナルの液体を左クリックすると
    液体を取り出します。

左の部分には次の設定ボタンがあります:

*   名前・MOD・数など、いろいろな属性で並べ替え
*   保管中・クラフト可能・その両方の表示
*   アイテム・液体・その両方の表示
*   並べ替えの順の切り替え
*   ターミナルの詳しい設定の画面を開く
*   ターミナルの画面の高さを変える

右には <ItemLink id="view_cell" /> のスロットがあります

中央の部分の右上(ハンマーのボタン)で[自動クラフト](../ae2-mechanics/autocrafting.md)の状況の画面が開き、
自動クラフトの進み具合や、各[クラフトCPU](crafting_cpu_multiblock.md)が何をしているかを見られます。

## レシピ

<RecipeFor id="terminal" />

<a name="crafting-terminal-ui"></a>

# クラフトターミナル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/crafting_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

クラフトターミナルは普通のターミナルと同じ設定と部分を持ちますが、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)から
自動で補充されるクラフトグリッドが加わっています。完成品をシフトクリックするときは気をつけてください!

ターミナルはできるだけ早くクラフトターミナルにしましょう。

## 画面

クラフトターミナルの画面は普通のターミナルと同じですが、真ん中にクラフトグリッドが加わっています。

クラフトグリッドの中身をネットワークのストレージかインベントリに空けるボタンが2つ追加されています。

## レシピ

<RecipeFor id="crafting_terminal" />

<a name="pattern-encoding-terminal-ui"></a>

<a name="pattern-encoding-terminal"></a>

# パターンエンコードターミナル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_encoding_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

パターンエンコードターミナルは普通のターミナルと同じ設定と部分を持ちますが、[パターン](patterns.md)をエンコードする画面が
加わっています。クラフトターミナルの画面に似ていますが、このクラフトグリッドは実際にはクラフトしません。

クラフトターミナルとは別に、これも1つ持っておきましょう。

## 画面

普通のターミナルと同じ画面に、[パターン](patterns.md)をエンコードする画面が加わっています。

パターンをエンコードする画面にはいくつかの部分があります:

<ItemLink id="blank_pattern" /> を入れるスロット。

パターンをエンコードする大きな矢印。

エンコード済みのパターンのスロット。エンコード済みのパターンをここに置くと編集でき、その後「エンコード」の矢印を押します。

右の4つのタブで、エンコードするパターンの種類を切り替えます

*   クラフト
*   加工
*   鍛冶
*   石切り

中央の画面は、エンコードするパターンの種類によって変わります:

*   クラフトモード:
    *   左クリックか JEI/REI からのドラッグで材料を置いてレシピを作ります。右クリックで材料を外します。
    *   代替を有効にすると、どの板材からでも棒を作れる、といったことができます。本当に必要なときだけ
        使ってください。
    *   液体の代替を有効にすると、液体入りバケツの代わりに保管している液体を使えます。
    *   JEI/REI のレシピの画面から直接パターンをエンコードすることもできます。

*   加工モード:
    * 左クリック・右クリックか JEI/REI からのドラッグで材料を置き、レシピの入力と出力を指定します。
    * 液体の入れ物(バケツや液体タンクなど)で右クリックすると、バケツやタンクのアイテムではなく、その液体を材料に設定します。
    * スタックを持っているとき、左クリックでスタック全部、右クリックで1個を置きます。置いた材料のスタックを左クリックすると
        スタックごと外し、右クリックすると1つ減らします。「ブロックを選択」に割り当てたキー(たいていはホイールクリック)で、
        アイテムや液体の正確な量を指定できます。
    * 出力のスロットには、主な出力と、自動クラフトの処理に知らせたい副産物の場所があります。
    * 入力と出力のスロットはどちらもスクロールできるので、材料を81種類、副産物を26種類まで持てます
    * JEI/REI のレシピの画面から直接パターンをエンコードすることもできます。

*   鍛冶モードと石切りモードの画面は、それぞれ鍛冶台と石切台と同じように使えます。

## レシピ

<RecipeFor id="pattern_encoding_terminal" />

<a name="pattern-access-terminal-ui"></a>

# パターンアクセスターミナル

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/blocks/pattern_access_terminal.snbt" />
  <IsometricCamera yaw="180" />
</GameScene>

パターンアクセスターミナルは、ある問題を解決するためのものです: <ItemLink id="pattern_provider" /> と <ItemLink id="molecular_assembler" /> を
ぎっしり積んだ塔では、プロバイダーに直接触れて新しいパターンを入れることができません。それに、
[パターン](patterns.md)を入れるために拠点の端から端まで歩くのが面倒なこともあるでしょう。パターンアクセスターミナルを使うと、
ネットワーク上の全てのパターンプロバイダーにアクセスできます。

## 画面

このターミナルの画面は、他のターミナルとは違います。

ターミナルの高さと、どのパターンプロバイダーを表示するかの設定があります。

ターミナルの各行が、それぞれのパターンプロバイダーに対応します。

ターミナルのパターンプロバイダーは、つながっているブロック、または(金床や <ItemLink id="name_press" /> で)付けた名前で
並びます。

## レシピ

<RecipeFor id="pattern_access_terminal" />
