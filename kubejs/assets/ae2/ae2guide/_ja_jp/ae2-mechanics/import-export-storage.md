---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: 搬入・搬出・ストレージ
---

# 搬入・搬出・ストレージ

**ME システムとワールド**

AE2 で大事な考え方の1つが、ネットワークのストレージです。ネットワークの中身が保管される場所で、
普通は[ストレージセル](../items-blocks-machines/storage_cells.md)か、<ItemLink id="storage_bus" /> がつながっている入れ物です。
ほとんどの AE2 の[デバイス](../ae2-mechanics/devices.md)は、何らかの形でこれとやり取りします。

例えば、

*   <ItemLink id="import_bus" /> はネットワークのストレージにものを入れます
*   <ItemLink id="export_bus" /> はネットワークのストレージからものを取り出します
*   <ItemLink id="interface" /> はネットワークのストレージから取り出しもするし、入れもします
*   [ターミナル](../items-blocks-machines/terminals.md)は、アイテムを入れたり取ったりするとき、またクラフトのスロットを補充するとき、ネットワークのストレージに入れたり取り出したりします
*   <ItemLink id="storage_bus" /> は実際にはストレージに入れたり取り出したりしません。つながった入れ物に入れたり取り出したりして、
    それをネットワークのストレージとして使います(なので、実際には他のデバイスが*それ*に入れたり取り出したりします)

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_export_storage.snbt" />

  <BoxAnnotation color="#dddddd" min="8 1 1" max="9 1.3 2">
        インポートバスは、向いている入れ物からネットワークのストレージにものを搬入します
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="8 2 1" max="9 3 1.3">
        インベントリからターミナルに何かを入れると、ネットワークがそれを搬入したことになります
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="7 0 1" max="8 1 2">
        インターフェースは、スロットに在庫の設定が無いか、設定した在庫より多くのアイテムがスロットにあると、
        内部の入れ物から搬入します。なので、ものを入れればネットワークに搬入できます
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="6 0 1" max="7 1 2">
        パターンプロバイダーは内部の返却スロットから搬入するので、ものを入れればネットワークに搬入できます
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 1" max="5 2 2">
        ドライブは、入れたセルをネットワークのストレージとして提供します
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        ストレージバスは、向いている入れ物をネットワークのストレージとして使います
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 1 1" max="2 1.3 2">
        エクスポートバスは、ネットワークのストレージから向いている入れ物へものを搬出します
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="2 3 1.3">
        ターミナルから何かを取り出すと、ネットワークがそれを搬出したことになります
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 1 1" max="1 2 2">
        インターフェースは、スロットに在庫の設定があると、内部の入れ物へ搬出します。
        なので、そこから取り出せばネットワークから取り出せます
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

ネットワークのストレージに入れたり取り出したりする動作/出来事は、自動化や物流の仕組みを考えるときに
覚えておくべき大事なことです。

<a name="storage-priority"></a>

## ストレージの優先度

一部の GUI の右上のレンチをクリックすると、優先度を設定できます。
ネットワークに入るアイテムは、まず最も優先度の高いストレージを
行き先にします。同じ優先度のストレージが2つあれば、
すでにそのアイテムが入っているほうを他より
優先します。ホワイトリストのセルは、他のストレージと同じ優先度のまとまりにあるとき、すでにそのアイテムが入っているものとして扱います。
ストレージから取り出すアイテムは、最も優先度の低いストレージから取り出されます。この優先度の仕組みにより、アイテムを入れたり取り出したりするにつれて、
優先度の高いストレージは満たされ、優先度の低いストレージは空になっていきます。
