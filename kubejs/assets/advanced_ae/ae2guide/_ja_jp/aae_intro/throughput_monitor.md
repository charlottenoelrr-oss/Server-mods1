---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: ME 処理量モニター
  icon: advanced_ae:throughput_monitor
categories:
  - advanced items
item_ids:
  - advanced_ae:throughput_monitor
  - advanced_ae:throughput_monitor_configurator
---

# ME 処理量モニター

<GameScene zoom="8" background="transparent">
<ImportStructure src="../structure/throughput_monitors.snbt"></ImportStructure>
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

処理量モニターはモニターの一種です。<ItemLink id="ae2:storage_monitor" /> と同じ機能に加え、処理量の計測機能があります。
1種類のアイテム・液体を追い、量の変化を見張って、1秒あたりの量を表示します。

チャンネルを*必要としません*。

## 操作

*   アイテムを持って右クリックするか、液体の入れ物を持ってダブル右クリックすると、そのアイテム・液体をモニターに設定します。
*   素手で右クリックするとモニターを空にします。
*   素手でシフト+右クリックするとモニターをロックします。

## 処理量モニター設定器

<ItemImage id="advanced_ae:throughput_monitor_configurator" scale="4"></ItemImage>

処理量モニター設定器は、表示するデータを変える道具です。手に持ってモニターを右クリックすると、
3つの選択肢を順に切り替えます:

* 1ティックあたりのアイテム数
* 1秒あたりのアイテム数
* 1分あたりのアイテム数

注意: モードを変えると表示が安定するまで少し時間がかかることがあるので、最初の値は信用しないでください!
