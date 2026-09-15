# tellraw @a [{"text":"Recipe Filler","color":"gray","bold":true}]

scoreboard players set @s RD.block.calculator.temp3 0


# temp削除
data remove storage rockietools:custom_recipe temp_crafter.meta

# temp設定
data modify storage rockietools:custom_recipe temp_crafter.list set from storage rockietools:custom_recipe temp.category
data modify storage rockietools:custom_recipe temp_crafter.meta set from storage rockietools:custom_recipe meta

# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp_crafter.list[0]"}]

execute store result score recipe_length RD.ai_timer if data storage rockietools:custom_recipe temp.category[]

execute if score recipe_length RD.ai_timer matches 0 run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/nothing_found
execute if score recipe_length RD.ai_timer matches 1.. unless data storage rockietools:custom_recipe temp.category[{result:{sort:[{"key":"ui_buttons/startup"}]}}] unless data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/back

function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/ with storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1]