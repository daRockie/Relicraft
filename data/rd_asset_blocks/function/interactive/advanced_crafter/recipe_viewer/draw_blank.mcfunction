# say drawing blank

# stash上にデータがあれば書き換え
execute if data entity @s equipment.head.components."minecraft:custom_data".data.stash.parent run data modify storage rockietools:custom_recipe temp.input.parent set from entity @s equipment.head.components."minecraft:custom_data".data.stash.parent

# ヘッドデータ消去
data remove entity @s equipment.head.components."minecraft:custom_data".data.stash.parent

playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 1

# 2番目にデータがなければ書き込み
# execute unless data storage rockietools:custom_recipe temp.input.parent[1] run data modify storage rockietools:custom_recipe temp.input.parent append from storage rockietools:custom_recipe temp.input.parent.key

# tellraw @a [{"text":"Parent: "},{"storage":"rockietools:custom_recipe",nbt:"temp.input.parent"}]

# キーがないフラグがあればスタートアップ処理、なければキーを参照してレシピを呼び出し
execute unless data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_recipe with storage rockietools:custom_recipe temp.input.parent[-1]
execute if data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_recipe {"keys":"{key:\"ui_buttons/startup\"}"}

# データを戻す
data modify entity @s equipment.head.components."minecraft:custom_data".data.stash.parent set from storage rockietools:custom_recipe temp.input.parent

# アイテムを敷き詰め、UIボタンをインベントリから消去
function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
clear @a *[custom_data~{TempItem:1b}]