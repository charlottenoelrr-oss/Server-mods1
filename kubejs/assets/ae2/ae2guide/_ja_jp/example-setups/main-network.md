---
navigation:
  parent: example-setups/example-setups-index.md
  title: 「メインのネットワーク」の例
  icon: controller
---

# 「メインのネットワーク」の例

他の多くの仕組みで「メインのネットワーク」が出てきます。これらの[デバイス](../ae2-mechanics/devices.md)をどう組み合わせて
使える仕組みにするのか、と思うかもしれません。例はこうです:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/small_base_network.snbt" />

    <BoxAnnotation color="#33dd33" min="5 1 10" max="9 7 14" thickness="0.05">
        パターンプロバイダーと組立機の大きなまとまりで、クラフト・石切り・鍛冶のパターンを入れる場所をたくさん確保します。
        市松模様にすると、小さくまとめたままプロバイダーが複数の組立機を並行して使えます。
        8個ずつのまとまりにすると、チャンネルが間違った道を通ることがありません。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 10 12" max="14 11 14" thickness="0.05">
        実はコントローラーはそんなに大きくなくてかまいません。よく拠点で見る巨大な輪や立方体のデザインは、
        主に見た目のためです。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 12 13" max="14 13 14" thickness="0.05">
        良いネットワークには必ずエネルギーセルがあり、1tickあたりにより多くのエネルギーを受け取れるようにし、
        電力の揺れをならします。
    </BoxAnnotation>
    
    <BoxAnnotation color="#33dd33" min="2 1 10" max="4 4 13" thickness="0.05">
        電力源には、原子炉やソーラーパネルや発電機など、他のMODのものを使うことになるでしょう。
        振動室もそこそこ使えますが、AE2 はMODパックの中で使い、拠点の主な発電機を使う前提で
        作られています。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="15 1 9" max="16 3 14" thickness="0.05">
        外装を使うと、壁の後ろにものを隠せます。
    </BoxAnnotation>
    <BoxAnnotation color="#33dd33" min="15 3 12" max="16 10 14" thickness="0.05">
        外装を使うと、壁の後ろにものを隠せます。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 7" max="14 10 9" thickness="0.05">
        普段のストレージには、ドライブやセルはそれほど多く要りません。4k か 16k のセルでドライブ2〜4台分あれば
        ほとんどの場合足ります。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="13 9 10" max="14 11 11" thickness="0.05">
        大量の保管には、特定のアイテムに絞り込んだ大きなセルを、優先度を高くした別のドライブに入れましょう。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10 9 13" max="11.7 13 14" thickness="0.05">
        インターフェースでの自動在庫。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="6 10 12" max="9 12 15" thickness="0.05">
        チャージャーの自動化を、複数のチャージャーへ自然に広げたもの。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="2 10 12" max="5 11 15" thickness="0.05">
        1.20 では刻印機が出力を自動で出せるようになったので、プロセッサを自動化する別の方法。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="3 10 10" max="4 12 11" thickness="0.05">
        1.20 では刻印機が出力を自動で出せるようになったので、プロセッサを自動化する別の方法。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.2 9.2 8.2" max="7.8 10 8.8" thickness="0.05">
        無線アクセスポイントの範囲は球状なので、真ん中に置いています。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="14 1 2" max="16 5 7" thickness="0.05">
        普通は、大きな作業用に大きなクラフトCPUを1〜2個、大きなCPUが忙しい間の
        ちょっとした作業用に小さなものをいくつか置きます。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="5 3 6" max="6 4 7" thickness="0.05">
        デバイスが8個を超える場合(8か所より多くに配るなど)、サブネットにも専用のコントローラーが
        必要になることがあります。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="7.3 1 3.3" max="9.7 4 6" thickness="0.05">
        ケルタスクォーツ農場。
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="10.3 1 2.3" max="12.7 3.7 5" thickness="0.05">
        水に投げ込む自動化。
    </BoxAnnotation>

  <IsometricCamera yaw="135" pitch="15" />
</GameScene>
