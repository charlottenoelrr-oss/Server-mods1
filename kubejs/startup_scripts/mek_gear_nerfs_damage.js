// gear_nerfs.js
// 配置場所: kubejs/startup_scripts/gear_nerfs.js
//
// - 原子分解機(Atomic Disassembler)を手持ちしている間: 攻撃を完全に無効化
// - ジェットパックを胸装備している間: 攻撃を完全に無効化(魔法系ダメージ回避対策)
//
// ダメージ量を0にするだけでは、命中音・赤点滅・ノックバックなどの
// 「ヒットリアクション」自体は再生されてしまう。これらは最終ダメージ量とは
// 別に「攻撃が命中したかどうか」に紐づいているため。
// そのため、条件を満たす場合はダメージ量を0にするのではなく、
// event.setCanceled(true) でイベント自体をキャンセルして
// 「攻撃が命中しなかったこと」にする。
// (cancel()という短縮メソッドは存在しない。ICancellableEventが
//  提供するのは isCanceled()/setCanceled(boolean) のみ)
//
// 注意: この方式では、殴られたMob側が反撃対象として認識しなくなる
// (敵対化しない)可能性がある。今回はそれで問題ない前提で実装している。
//
// 注意: KubeJS 2101.7.x(KubeJS 7系)ではForge/NeoForge問わず、
// 汎用イベント登録のバインディング名が ForgeEvents から NativeEvents に
// 変更されている。ForgeEventsはKubeJS6以前の名前で7系には存在しないため、
// NativeEvents.onEvent(class, callback) の形で登録する。
//
// さらに、NeoForge 21.0.31以降(1.21.1で配布されている現行版)では
// LivingHurtEvent自体が廃止され、LivingIncomingDamageEvent に
// 置き換えられている。amount/getAmount()/setAmount()のAPIは
// 旧LivingHurtEventと互換の形で引き継がれている。

const NERFED_HELD_ITEMS = [
  'mekanism:atomic_disassembler'
]

const NERFED_CHEST_ITEMS = [
  'mekanism:jetpack',
  'mekanism:armored_jetpack'
]

const LivingIncomingDamageEvent = Java.loadClass('net.neoforged.neoforge.event.entity.living.LivingIncomingDamageEvent')

NativeEvents.onEvent(LivingIncomingDamageEvent, event => {
  const source = event.getSource()

  // 攻撃した実体(プレイヤー)を取得
  const attacker = source.actual
  if (!attacker || !attacker.isPlayer()) return

  // 手持ちチェック(原子分解機)
  const heldItem = attacker.getMainHandItem()
  if (heldItem && !heldItem.isEmpty() && NERFED_HELD_ITEMS.includes(heldItem.id)) {
    event.setCanceled(true)
    return
  }

  // 胸装備チェック(ジェットパック)
  const chestItem = attacker.getChestArmorItem()
  if (chestItem && !chestItem.isEmpty() && NERFED_CHEST_ITEMS.includes(chestItem.id)) {
    event.setCanceled(true)
  }
})
