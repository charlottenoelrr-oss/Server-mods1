---
navigation:
  parent: example-setups/example-setups-index.md
  title: 自動鉱石幸運化装置
  icon: minecraft:raw_iron
---

# 鉱石の幸運化の自動化

<ItemLink id="annihilation_plane" /> には幸運を含むツルハシのエンチャントを付けられるので、すぐ思いつく使い方は、
いくつかに幸運を付け、<ItemLink id="formation_plane" /> と <ItemLink id="annihilation_plane" /> で鉱石をすばやく置いては
壊すことです。

<ItemLink id="import_bus" /> は「だんだん速くなる」ので、仕組みは最初は遅く、数秒で全速になります。

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 0 2" max="3 1 3">
        (1) インポートバス: 加速カードを何枚か入れる。
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 2" max="2 1 2.3">
        (2) 形成プレーン: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 0.7" max="2 1 1">
        (3) 消滅プレーン: 設定する GUI は無いが、幸運のエンチャントを付ける。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 0" max="3 1 1">
        (4) ストレージバス: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="3.5 0.5 2.5" color="#00ff00">
        入力
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 0.5 0.5" color="#00ff00">
        出力
    </DiamondAnnotation>

<DiamondAnnotation pos="4 0.5 1.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

*   <ItemLink id="import_bus" />(1)には <ItemLink id="speed_card" /> を何枚か入れます。インポートバスが一度に取り出す量が増えるので、
    並べる形成プレーンが多いほど多く必要です。
*   <ItemLink id="formation_plane" />(2)は初期の設定のままです。
*   <ItemLink id="annihilation_plane" />(3)は GUI が無く設定できませんが、幸運のエンチャントを付けます。
*   <ItemLink id="storage_bus" />(4)は初期の設定のままです。

## しくみ

1.  緑のサブネットの <ItemLink id="import_bus" /> が、1つ目の樽からブロックを[ネットワークのストレージ](../ae2-mechanics/import-export-storage.md)に搬入します
2.  緑のサブネットのストレージは <ItemLink id="formation_plane" /> だけなので、プレーンがブロックを置きます。
3.  橙のサブネットの <ItemLink id="annihilation_plane" /> がブロックを壊し、幸運が適用されます。
4.  橙のサブネットの <ItemLink id="storage_bus" /> が、壊してできたものを2つ目の樽に保管します。
