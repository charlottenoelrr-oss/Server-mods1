---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: チャンネル
  icon: controller
---

# チャンネル

Applied Energistics 2 の [ME ネットワーク](me-network-connections.md)では、ネットワークのストレージやその他の
ネットワークの機能を使う[デバイス](../ae2-mechanics/devices.md)を支えるのにチャンネルが必要です。チャンネルは全てのデバイスにつなぐ USB ケーブルのようなものだと考えてください。
コンピューターの USB ポートには限りがあり、つなげるデバイスの数にも限りがあります。ほとんどの機械、フルブロックのデバイス、普通のケーブルは、
最大8チャンネルしか通せません。フルブロックのデバイスや普通のケーブルは、8本の「チャンネルの線」の束だと考えられます。一方、[高密度ケーブル](../items-blocks-machines/cables.md#dense-cable)は
最大32チャンネルを通せます。他に32チャンネルを運べるのは <ItemLink id="me_p2p_tunnel" />
と[量子ネットワークブリッジ](../items-blocks-machines/quantum_bridge.md)だけです。デバイスがチャンネルを1つ使うたびに、束から USB の「線」を1本引き抜くと
想像してください。当然、その「線」はその先では使えなくなります。

<GameScene zoom="7" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_demonstration_1.snbt" />

  <LineAnnotation color="#33ff33" from="1 .4 .7" to="2.4 .4 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .7" to="2.4 .6 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .6" to="2.6 .4 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.4 .6 .7" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .4 .7" to="2.4 .4 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .6 .6" to="2.6 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 .6" to="2.6 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.1 .6 1.5" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 1.5" to="2.9 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.6 .6 1.5" to="2.6 .9 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .1 1.5" to="2.4 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .4" to="3.5 .6 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="3.5 .6 .4" to="3.5 .9 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="3.5 .1 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .3" to="1.5 .6 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1.5 .6 .3" to="1.5 .9 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1.5 .1 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#ff3333" from="3.5 .5 .5" to="5.5 .5 .5" alwaysOnTop={true}>
  ケーブルの8チャンネルが全て使われているので、ドライブにはチャンネルが届きません。
  </LineAnnotation>

  <LineAnnotation color="#993333" from="1 .5 .5" to="1.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="1.5 .5 .5" to="1.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2 .5 .5" to="2.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2.5 .5 .5" to="2.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="3 .5 .5" to="3.25 .5 .5" alwaysOnTop={true}/>

  <DiamondAnnotation pos="3.6 0.5 0.5" color="#ff0000">
        ケーブルの8チャンネルが全て使われているので、ドライブにはチャンネルが届きません。
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

チャンネルがネットワークでどう使われ、どう通っているかを簡単に確かめるには、[スマートケーブル](../items-blocks-machines/cables.md)を使いましょう。チャンネルの経路と使用数が表示されます。

チャンネルは、通るノード1つにつき 1⁄128 ae/t を消費します。そのため、
デバイスが8個でノードが96を超えるネットワークに <ItemLink id="controller" /> を加えると、
チャンネルの割り当て方が変わるので、かえって消費電力が減ることがあります。

なお、**チャンネルはケーブルの色とは何の関係もありません**。ケーブルの色は、ケーブルどうしをつながらなくするだけです。

<a name="channel-routing"></a>

## チャンネルの経路

<ItemLink id="controller" /> を使っているとき、
チャンネルは3つの段階で経路を決めます。まず、隣り合う機械を通って最も近い[普通のケーブル](../items-blocks-machines/cables.md)
(ガラス・被覆・スマート)までの最短の道を通ります。次に、その普通のケーブルを通って最も近い[高密度ケーブル](../items-blocks-machines/cables.md)
(高密度か高密度スマート)までの最短の道を通ります。最後に、その高密度ケーブルを通って <ItemLink id="controller" /> までの最短の道を通ります。
最短の道がすでにいっぱいだと、一部の[デバイス](devices.md)に必要なチャンネルが届かないことがあります。
色付きのケーブル、ケーブルアンカー、トンネルをうまく使って、チャンネルが望む道を通るようにしましょう。

例えばこの場合、ケーブルの容量は足りているのに、チャンネルが最短の道を通ろうとして、
一部のケーブルに集中して他のケーブルが空いたままになるため、一部のドライブにチャンネルが届きません。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 3.6" to="1.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.4 0.5 3.6" to="1.4 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 1.6" to="0.6 .5 1.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 1.6" to="0.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 3.4" to="1.4 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 3.4" to="1.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <BoxAnnotation color="#dddddd" min="1.2 0.2 3.2" max="1.8 0.8 3.8" alwaysOnTop={true} thickness="0.05">
        8を超えるチャンネルがここを通ろうとするので、一部が切り捨てられます。
  </BoxAnnotation>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

これは、チャンネルが通れる道をもっと注意して制限すれば直せます。ネットワークは木のような(または茂みのような)形にしましょう。
輪や、チャンネルの道がどちらとも取れる部分は、できるだけ減らしましょう。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue_fix.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 5.6" to="1 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

## アドホックネットワーク

<ItemLink id="controller" /> の無いネットワークはアドホックとみなされ、
チャンネルを使うデバイスを8個まで支えられます。
8個を超えると、ネットワークのチャンネルを使うデバイスが止まります。
デバイスを減らすか、<ItemLink id="controller" /> を加えてください。

コントローラーのあるネットワークと違い、アドホックネットワークの[スマートケーブル](../items-blocks-machines/cables.md)は、
そのケーブルを流れるチャンネル数ではなく、ネットワーク全体で使っているチャンネル数を表示します。

アドホックネットワークでは、各デバイスはネットワーク全体で
1チャンネルを使います。これは、<ItemLink id="controller" /> が最短の道に基づいてチャンネルを割り当てるのとは
大きく違います。

## 設計

[チャンネルの経路](channels.md#channel-routing)で説明したとおり、ネットワークは木のような構造にするのがいちばんです。コントローラーから高密度ケーブルが枝分かれし、
高密度ケーブルから普通のケーブルが枝分かれし、普通のケーブルに[デバイス](../ae2-mechanics/devices.md)を8個以下のまとまりで付けます。

やってはいけない例です:

チャンネルの道をたどると、

1. コントローラーからすぐ右に出たところで、ドライブが普通のケーブルのように働くので、8チャンネルに絞られます。
ただし、ここではスマートケーブルを使っていないので、いくつのチャンネルを使っているかは見えません。残り8チャンネル。
2. ドライブが1チャンネル使います。
残り7チャンネル。
3. 2チャンネルが上のターミナルへ行きます。
残り5チャンネル。
4. 右へ進むと、インターフェースがもう1チャンネル使います。
残り4チャンネル。
5. 1チャンネルが上のパターンプロバイダーへ行きます。
残り3チャンネル。
6. 右へ進むと、1チャンネルが上のインポートバスへ行きます。
残り2チャンネル。
7. 組立機に材料を送るパターンプロバイダーのまとまりには2チャンネルしか届かないので、プロバイダーのうち2つにチャンネルが届きません。

結局の原因は、チャンネルを絞ってしまい、チャンネルがどう配られるかを考えなかったことです。

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/bad_network_structure.snbt" />

<LineAnnotation color="#33ff33" from="6.5 .5 1.5" to="6 .5 1.5" alwaysOnTop={true} thickness="0.4">
  32チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="6 .5 1.5" to="5.5 .5 1.5" alwaysOnTop={true} thickness="0.2">
  8チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 1.5 1.5" alwaysOnTop={true} thickness="0.1">
  2チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 1.5 1.5" to="5.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 2.5 1.5" to="5.5 2.5 1.1" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="4.5 .5 1.5" alwaysOnTop={true} thickness="0.158">
  5チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 1.5 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="3.5 .5 1.5" alwaysOnTop={true} thickness="0.122">
  3チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="3.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 2.5 1.5" to="3.7 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="1.5 .5 1.5" alwaysOnTop={true} thickness="0.1">
  2チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="1.5 0.3 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="0.5 0.5 1.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#33ff33" from="0.5 0.5 1.5" to="0.5 0.5 0.5" alwaysOnTop={true} thickness="0.071">
  1チャンネル
</LineAnnotation>

<LineAnnotation color="#ff3333" from="0.5 1.5 1.5" to="0.5 1.3 1.5" alwaysOnTop={true} thickness="0.071">
  チャンネルなし
</LineAnnotation>

<LineAnnotation color="#ff3333" from="1.5 1.5 0.5" to="1.5 1.3 0.5" alwaysOnTop={true} thickness="0.071">
  チャンネルなし
</LineAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

---

良い構造の例です:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/treelike_network_structure.snbt" />

    <BoxAnnotation color="#dddddd" min="6.9 0 4.9" max="9.1 4 7.1" thickness="0.05">
        パターンプロバイダーが8個ずつ別のまとまりになっていることに注目してください。
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 4 4" max="8 5 5" thickness="0.05">
        チャンネルでいっぱいの普通のケーブル2本が合わさる所には、高密度ケーブルが必要です。
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 0 13" max="8 1 14" thickness="0.05">
        隣り合うケーブルがつながらないよう、違う色のケーブルを使っています。
    </BoxAnnotation>


  <IsometricCamera yaw="315" pitch="30" />
</GameScene>

## チャンネルのモード

Minecraft 1.18 用の AE2 10.0.0 で、ワールドでの AE2 のチャンネルの動きを変える新しい設定が入りました。
全般の欄に新しい設定(`channels`)があり、これで変えられます。また、管理者がゲーム内でモードと設定を変える
新しいコマンドもあります。変えるには `/ae2 channelmode <mode>`、
今のモードを表示するには `/ae2 channelmode` です。ゲーム内でモードを変えると、既存の全てのネットワークが
再起動し、すぐに新しいモードを使います。

これは Minecraft 1.12 にあった設定を復活・改良したもので、仕組みを完全に無くしたくはないが
もう少し気楽に遊びたいプレイヤー向けの、より良い選択肢を用意しています。

次の表は、設定ファイルとコマンドで使えるモードの一覧です。

| 設定    | 説明                                                                                                                                                                                                                               |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default`  | ここで説明しているとおりの、ケーブルとアドホックネットワークのチャンネルの容量を持つ普通のモード                                                                                                                           |
| `x2`       | 全てのチャンネルの容量が2倍(普通のケーブルで16、高密度ケーブルで64、アドホックネットワークで16チャンネル)                                                                                                                           |
| `x3`       | 全てのチャンネルの容量が3倍(普通のケーブルで24、高密度ケーブルで92、アドホックネットワークで24チャンネル)                                                                                                                           |
| `x4`       | 全てのチャンネルの容量が4倍(普通のケーブルで32、高密度ケーブルで128、アドホックネットワークで32チャンネル)                                                                                                                       |
| `infinite` | チャンネルの制限を全て無くす。コントローラーは引き続きネットワークの消費電力を*大きく*減らす。スマートケーブルは、完全にオフ(チャンネルを運ばない)と完全にオン(1チャンネル以上運ぶ)を切り替えるだけになる。 |
