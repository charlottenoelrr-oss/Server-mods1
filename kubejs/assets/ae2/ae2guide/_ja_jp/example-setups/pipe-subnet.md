---
navigation:
  parent: example-setups/example-setups-index.md
  title: アイテム/液体の「パイプ」のサブネット
  icon: storage_bus
---

# アイテム/液体の「パイプ」のサブネット

AE2 の[デバイス](../ae2-mechanics/devices.md)でアイテムや液体のパイプをまねる簡単な方法で、アイテムや液体のパイプを使う場面ならどこでも役立ちます。
<ItemLink id="pattern_provider" /> にクラフトの完成品を戻すのにも使えます。

これにはだいたい2つの方法があります:

## インポートバス -> ストレージバス

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) インポートバス: 絞り込める。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) ストレージバス: 絞り込める。これ(と行き先にしたい他のストレージバス)が
        ネットワークの唯一のストレージである必要がある。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        送り元
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        行き先
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

送り元の入れ物の <ItemLink id="import_bus" />(1)がアイテムや液体を搬入し、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に保管しようとします。
ネットワークのストレージは <ItemLink id="storage_bus" />(2)だけなので(だからメインのネットワークではなくサブネットにします)、アイテムや液体は
行き先の入れ物に置かれ、運ばれたことになります。エネルギーは <ItemLink id="quartz_fiber" /> で送ります。
インポートバスとストレージバスはどちらも絞り込めますが、絞り込まなければ、アクセスできるものを全て運びます。
この仕組みは、複数のインポートバスと複数のストレージバスでも動きます。

## ストレージバス -> エクスポートバス

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) ストレージバス: 絞り込める。これ(と送り元にしたい他のストレージバス)が
        ネットワークの唯一のストレージである必要がある。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) エクスポートバス: 絞り込む必要がある。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        送り元
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        行き先
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

行き先の入れ物の <ItemLink id="export_bus" /> が、フィルターのアイテムを[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)から取り出そうとします。
ネットワークのストレージは <ItemLink id="storage_bus" /> だけなので(だからメインのネットワークではなくサブネットにします)、アイテムや液体は
送り元の入れ物から取り出され、運ばれたことになります。エネルギーは <ItemLink id="quartz_fiber" /> で送ります。
エクスポートバスは絞り込まないと動かないので、この仕組みはエクスポートバスを絞り込んだときだけ動きます。
この仕組みは、複数のストレージバスと複数のエクスポートバスでも動きます。

## 動かない仕組み(インポートバス -> エクスポートバス)

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_export_pipe.snbt" />

<BoxAnnotation color="#dd3333" min="3.7 0 0" max="4 1 1">
        インポートバス: ネットワークにストレージが無いので、搬入する先がありません。
  </BoxAnnotation>

<BoxAnnotation color="#dd3333" min="1 0 0" max="1.3 1 1">
        (2) エクスポートバス: ネットワークにストレージが無いので、搬出するものがありません。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#ff0000">
        送り元
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#ff0000">
        行き先
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

インポートバスとエクスポートバスだけの仕組みは動きません。インポートバスは送り元の入れ物から取り出して
アイテムや液体をネットワークのストレージに保管しようとします。エクスポートバスはネットワークのストレージから取り出して
アイテムや液体を行き先の入れ物に入れようとします。しかし、このネットワークには**ストレージが無い**ので、インポートバスは搬入できず、
エクスポートバスも搬出できず、何も起こりません。

## 1つの面から入れて出す

入力を受け取り、出力も同じ1つの面から取り出せる機械があるとします(<ItemLink id="charger" /> など)。
2つのパイプのサブネットの方法を組み合わせれば、材料を入れることも完成品を取り出すこともできます:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="4 1 1" max="5 1.3 2">
        (1) インポートバス: 絞り込める。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (2) ストレージバス: 絞り込める。これ(とアイテムを入れたり取り出したりしたい他のストレージバス)が
        ネットワークの唯一のストレージである必要がある。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (3) 入れたり取り出したりしたいもの: この例ではチャージャー。
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 1" max="1 1.3 2">
        (4) エクスポートバス: 絞り込む必要がある。
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 1.5" color="#00ff00">
        送り元
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 1.5" color="#00ff00">
        行き先
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## インターフェース

実は、インポートバスとエクスポートバスの他にも、[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)にアイテムを入れたり
取り出したりする[デバイス](../ae2-mechanics/devices.md)があります!
ここで関係するのは <ItemLink id="interface" /> です。在庫に設定していないアイテムが入れられると、インターフェースは
それをネットワークのストレージに入れるので、インポートバス -> ストレージバスのパイプと同じように使えます。インターフェースに
あるアイテムを在庫として設定すると、ネットワークのストレージからそれを取り出すので、ストレージバス -> エクスポートバスのパイプと同じです。インターフェースは
一部のものを在庫にし、他は在庫にしない、という設定ができるので、何かの理由でそうしたければ、ストレージバスを通して離れた場所に入れたり取り出したりできます。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/interface_pipes.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        インターフェース
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        ストレージバス
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.7 0 2" max="4 1 3">
        ストレージバス
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 2" max="1 1.3 3">
        インターフェース
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 1対多と多対1(と多対多)

もちろん、<ItemLink id="import_bus" /> や <ItemLink id="export_bus" /> や <ItemLink id="storage_bus" /> を1つだけ使う必要はありません

<GameScene zoom="3" background="transparent">
<ImportStructure src="../assets/assemblies/many_to_many_pipe.snbt" />

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

<a name="providing-to-multiple-places"></a>

## 複数の場所へ送る

ここまでのことから、1つの <ItemLink id="pattern_provider" /> の面から、機械の並びや1つの機械の複数の面など、
いろいろな場所に材料を送る方法が導けます。

<ItemLink id="pattern_provider" /> は材料を実際に持つことは決して無いので、インポート -> ストレージや
ストレージ -> エクスポートのパイプは使えません。プロバイダーは材料を隣の入れ物に*送る*ので、
アイテムを搬入もできる隣の入れ物が必要です。

それは……<ItemLink id="interface" /> です!
プロバイダーを方向指定か平面の部品の形にするか、インターフェースを平面の部品の形にして、2つがネットワークでつながらないようにしましょう。

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        インターフェース(フルブロックではなく平面にする)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        ストレージバス
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        パターンで送りたい場所(複数の機械か、1つの機械の複数の面)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>
