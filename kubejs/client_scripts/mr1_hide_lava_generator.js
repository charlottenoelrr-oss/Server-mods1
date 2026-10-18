// Mr1: レシピを消した「溶岩生成機」を JEI の一覧からも隠す(server_scripts/mr1_remove_lava_generator.js と対)
RecipeViewerEvents.removeEntries('item', event => {
  event.remove('mwgr:lava_generator')
})
