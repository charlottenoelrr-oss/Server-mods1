---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: トグルバス
  icon: toggle_bus
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:toggle_bus
- ae2:inverted_toggle_bus
---

# トグルバス

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/toggle_bus.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="fluix_glass_cable" /> などのケーブルと同じように働くバスですが、
レッドストーンでつながりの状態を切り替えられます。これで [ME ネットワーク](../ae2-mechanics/me-network-connections.md)の一部を
切り離せます。

レッドストーン信号が来るとつながりを有効にします。<ItemLink id="inverted_toggle_bus" /> は逆に、
信号が来るとつながりを切ります。

なお、これを切り替えると、ネットワークが再起動してつながったデバイスを計算し直すことがあります。

[ケーブルの部品](../ae2-mechanics/cable-subparts.md)です。

## レシピ

<RecipeFor id="toggle_bus" />

<RecipeFor id="inverted_toggle_bus" />
