execute unless items block ~ ~ ~ container.9 * if items entity @a player.cursor *[custom_data={TempItem:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode

# カテゴリ走査
# /data modify storage rockietools:custom_recipe temp.category set from storage rockietools:custom_recipe list.crafter[{result:{sort:[{key:"armor"}]}}]
execute if items block ~ ~ ~ container.9 *[custom_data={TempItem:1b}] if items entity @a[distance=..32] player.cursor *[custom_data~{TempItem:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/show_recipe

execute if items entity @a[distance=..32] container.* *[custom_data~{TempItem:1b}] unless items entity @a[distance=..32] player.cursor *[custom_data~{TempItem:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/reset_screen

execute if items entity @e[type=item,distance=..10] container.0 *[custom_data~{TempItem:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/reset_screen

clear @a *[custom_data~{TempItem:1b}]