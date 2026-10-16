---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: エネルギー
  icon: energy_cell
---

# エネルギー

ネットワークを動かすにはエネルギーが必要です。ネットワークにはエネルギーの貯まり場があり、[デバイス](../ae2-mechanics/devices.md)はそこから直接エネルギーを取り、
<ItemLink id="vibration_chamber" />・<ItemLink id="energy_acceptor" />(と <ItemLink id="controller" />)がそこへ加えます。
ネットワークのどこかを <ItemLink id="network_tool" /> で右クリックするか、
コントローラーがあればそれを右クリックすると、ネットワークのエネルギーの統計が見られます。ネットワーク全体で蓄えて配るので、
エネルギーの転送速度の制限はありません。デバイスはいくらでも多くのエネルギーを取れ、
エネルギーアクセプターも実質無制限の速さで受け取れます。制限になるのはエネルギーの蓄えの量だけです。

## エネルギーの受け取り

<Row>
  <BlockImage id="energy_acceptor" scale="4" />

  <GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
  </GameScene>

  <BlockImage id="controller" p:state="online" scale="4" />

  <BlockImage id="vibration_chamber" p:active="true" scale="4" />
  
  <BlockImage id="crystal_resonance_generator" scale="4" />
</Row>

AE2 は内部で Forge Energy(Forge)や TechReborn Energy(Fabric)を使いません。代わりに、
独自の単位 AE に変換します。この変換は一方通行です。エネルギーは <ItemLink id="energy_acceptor" /> と
<ItemLink id="controller" /> で変換できますが、コントローラーの面はより多くの[チャンネル](../ae2-mechanics/channels.md)のために使うほうがよいでしょう。
<ItemLink id="vibration_chamber" /> で発電したり、<ItemLink id="crystal_resonance_generator" /> で受動的に作ったりもできますが、AE2 は
発電の得意な他の工業系MODと一緒に使う前提で作られています。

つまり、拠点のエネルギーの配り方を考えるときは、AE2 のネットワークを1つの大きなマルチブロックの機械として
考えるのがいちばんです。

Forge Energy と TechReborn Energy の変換の比率は

*   2 FE = 1 AE (Forge)
*   1 E  = 2 AE (Fabric)

## エネルギーの蓄え

<Row>
  <BlockImage id="energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="4" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="4" />
</Row>

わりと当然の理由で、ネットワークは1tickの間に、蓄えられる以上のエネルギーを受け取ったり使ったりできません。ネットワークが
800 AE しか蓄えられなければ、[デバイス](../ae2-mechanics/devices.md)がエネルギーを求めても最大 800 AE までしか使えず(蓄えが満タンの場合)、
エネルギーアクセプターもネットワークに最大 800 AE までしか入れられません(蓄えが空の場合)。

これはおかしな動きのよくある原因です。エネルギーアクセプター・ドライブ・ターミナルと
いくつかのデバイスだけの小さなネットワークを作り、インベントリいっぱいの丸石をネットワークに入れようとしたとします。その丸石を
1tickで一度に入れるには、ネットワークが蓄えている以上のエネルギーが必要なので、丸石の一部しか入らず、ネットワークは
エネルギー切れになって再起動します。

**これはエネルギーセルを加えれば解決します。**

ネットワークには、ケーブル・機械・部品1つにつき 25 AE のエネルギーの緩衝があります。

<ItemLink id="controller" /> には、少しだけ内部のエネルギーの蓄え(8,000 AE)があります。

<ItemLink id="energy_cell" /> は 200k AE 蓄えられ、ほとんどの用途では1つで十分です。普段のネットワークの使用で起こる電力の急増を
楽にこなします。

<ItemLink id="dense_energy_cell" /> は 1.6M AE 蓄えられ、蓄えた電力だけでネットワークを動かしたいときや、
大きな[空間ストレージ](spatial-io.md)の仕組みの膨大な瞬間的な消費を扱うときに使います。

<ItemLink id="creative_energy_cell" /> はテスト用のクリエイティブのアイテムで、無限のパワァァァァとかを与えます。
