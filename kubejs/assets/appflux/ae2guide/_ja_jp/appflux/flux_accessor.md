---
navigation:
  parent: appflux/appflux-index.md
  title: フラックスアクセサー
  icon: appflux:flux_accessor
categories:
- flux accessor
item_ids:
- appflux:flux_accessor
- appflux:part_flux_accessor
---

# フラックスアクセサー

<Row>
<BlockImage id="appflux:flux_accessor" scale="8"></BlockImage>
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/flux_accessor.snbt"></ImportStructure>
</GameScene>
</Row>

フラックスアクセサーは、ME ネットワークに蓄えたエネルギーを入出力できます。初期状態では入出力の上限は無く、
Appflux の設定で変えられます。

高速モードと通常モードがあります。高速モードでは毎ティックエネルギーを出力するので、たくさん使うと重くなることがあります。
通常モードでは相手の蓄えに応じて出力するので、重くなりません。

* 注意: ここでいう「エネルギー」は [FE ストレージセル](./flux_cells.md)に蓄えた FE のことで、
[エネルギーセル](ae2:items-blocks-machines/energy_cells.md)のエネルギーではありません。

