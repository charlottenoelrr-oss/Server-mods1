---
navigation:
  parent: example-setups/example-setups-index.md
  title: 量を調整する丸石製造機
  icon: minecraft:cobblestone
---

# 量を調整する丸石製造機

丸石製造機の自動化は簡単で、バニラの普通の手動の丸石製造機に <ItemLink id="annihilation_plane" /> を向けるだけです。
ただし、これだといずれネットワークが丸石でいっぱいになるので、量の調整が欲しくなります。

消滅プレーンの働き方(<ItemLink id="import_bus" /> のように働く)のため、<ItemLink id="level_emitter" /> を
<ItemLink id="redstone_card" /> 入りの <ItemLink id="export_bus" /> に向けるだけ、というわけにはいきません(間にストレージが無いと、
搬入から搬出へ直接はつなげないため)。少し回り道をする必要があります。

<ItemLink id="toggle_bus" /> を使うとレッドストーン信号でネットワークの一部をつないだり切り離したりできますが、そのたびに
ネットワークが再起動します。簡単な回避策があります: トグルバスを[サブネット](../ae2-mechanics/subnetworks.md)に付けて、
サブネットだけが再起動するようにします。

<ItemLink id="annihilation_plane" /> と <ItemLink id="storage_bus" /> だけの独立した[サブネット](../ae2-mechanics/subnetworks.md)から、
メインのネットワークの <ItemLink id="interface" /> へ送ります。トグルバスがサブネットを <ItemLink id="quartz_fiber" /> とつないだり
切り離したりして、プレーンへの電力を止めます。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/regulated_cobble_gen.snbt" />

<BoxAnnotation color="#dddddd" min="3 2 2" max="7 2.3 3">
        (1) 消滅プレーン: 設定する GUI は無いが、効率強化と耐久力のエンチャントで消費電力を減らせる。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 2" max="2.3 3 3">
        (2) ストレージバス: 初期の設定のまま。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 2.3 2" max="2.7 2.7 2.3">
        (3) トグルバス: メインのネットワークではなく、サブネットの側に付けることがとても重要。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 2.3" max="2.7 3.3 2.7">
        (4) レベルエミッター: 丸石と欲しい数を設定し、「量が上限より少ないときに信号を出す」にする。
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 3" max="2 3 2">
        (5) インターフェース: 初期の設定のまま。
  </BoxAnnotation>

<DiamondAnnotation pos="0 2.5 1.5" color="#00ff00">
        メインのネットワークへ
    </DiamondAnnotation>

<DiamondAnnotation pos="5 1.5 3.5" color="#00ff00">
        水浸しの階段で、水が流れて溶岩を黒曜石に変えないようにしている。
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## 設定

* <ItemLink id="annihilation_plane" />(1)は設定する GUI がありませんが、効率強化と耐久力のエンチャントで消費電力を減らせます。
* <ItemLink id="storage_bus" />(2)は初期の設定のままです。
* <ItemLink id="toggle_bus" />(3)はクォーツファイバーのサブネット側に付ける必要があります。メインのネットワーク側に付けると、
  切り替えるたびにメインのネットワークが再起動します。
* <ItemLink id="level_emitter" />(4)は欲しいアイテムと数を設定し、「量が上限より少ないときに信号を出す」にします。
* <ItemLink id="interface" />(5)は初期の設定のままです。

## しくみ

1. 丸石製造機が丸石を作ります。
2. <ItemLink id="annihilation_plane" /> が丸石を壊します。
3. <ItemLink id="storage_bus" /> が丸石を <ItemLink id="interface" /> に保管し、メインのネットワークに送ります。
4. メインのネットワークの丸石が設定した数を超えると、<ItemLink id="level_emitter" /> が信号を止め、
   <ItemLink id="toggle_bus" /> がオフになります。
5. これでサブネットへの電力が切れ、消滅プレーンが止まります。
