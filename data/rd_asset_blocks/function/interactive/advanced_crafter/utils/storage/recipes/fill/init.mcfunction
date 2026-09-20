# tellraw @a [{"text":"Recipe Filler","color":"gray","bold":true}]

scoreboard players set @s RD.block.calculator.temp3 0


# temp削除
data remove storage rockietools:custom_recipe temp_crafter.meta

# temp設定
data modify storage rockietools:custom_recipe temp_crafter.list set from storage rockietools:custom_recipe temp.category
data modify storage rockietools:custom_recipe temp_crafter.meta set from storage rockietools:custom_recipe meta

# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp_crafter.list[0]"}]

# レシピの長さを記録
execute store result score recipe_length RD.ai_timer if data storage rockietools:custom_recipe temp.category[]

# レシピの長さが0なら看板を置いて処理を終了
execute if score recipe_length RD.ai_timer matches 0 run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/nothing_found
# execute if score recipe_length RD.ai_timer matches 1.. unless data storage rockietools:custom_recipe temp.category[{result:{sort:[{"key":"ui_buttons/startup"}]}}] unless data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/back

# 長さが1以上且つスタートアップ画面でないなら戻るボタンを設置
execute if score recipe_length RD.ai_timer matches 1.. unless data storage rockietools:custom_recipe temp.category[{result:{sort:[{"key":"ui_buttons/startup"}]}}] run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/back

# fill処理を開始
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/ with storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1]