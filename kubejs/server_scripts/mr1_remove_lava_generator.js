// Mr1: Mekanism: Water Generator Rebuild の「溶岩生成機」を作れなくする(Create で溶岩を作る意味が無くなるため、2026-10-18 ユーザー指示)
// 水生成機・重水生成機はそのまま使える。すでに置いてある溶岩生成機は動く
ServerEvents.recipes(event => {
  event.remove({ output: 'mwgr:lava_generator' })
})
