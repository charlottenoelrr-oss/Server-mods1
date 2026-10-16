---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: 高度なパターンエンコーダー
  icon: advanced_ae:adv_pattern_encoder
categories:
  - advanced items
item_ids:
  - advanced_ae:adv_pattern_encoder
  - advanced_ae:adv_processing_pattern
---

# 高度なパターンエンコーダー

ME 高度なパターンプロバイダーにアイテムをどこへ送るかを教えるには、その情報をエンコードする専用の道具が必要です。
手に持って右クリックすると GUI が開きます。

<ItemImage id="advanced_ae:adv_pattern_encoder" scale="4"></ItemImage>

エンコード済みの加工パターンを左のスロットに入れると、解読されて、全ての材料が一覧で表示されます。

![PEGui1](../pic/ape_pattern.png)

各行には、その材料を送れるブロックの全ての面を表すボタンが並んでいます。「A」のボタンを選んだままにすると、
パターンプロバイダーに直接つながっている面に送ります。特定の面を選ぶと、必ずその面にアイテムを入れます。
大事なのは、高度なパターンを正しく解読できるのは <ItemLink id="advanced_ae:adv_pattern_provider" /> だけで、
他の種類のパターンプロバイダーで使うと普通のパターンとして振る舞うことです。
また、指定した面にアイテムを1つでも入れられなければ、面を指定して入れることはせず、
普通のパターンプロバイダーの動きになります。
