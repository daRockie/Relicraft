# say search for recipe

item replace block ~ ~ ~ container.16 from entity @s weapon.mainhand

execute if items block ~ ~ ~ container.16 *[custom_data~{RD.craftable:1b}] run item modify block ~ ~ ~ container.16 rd_asset_blocks:craftable_in_crafting_table

item modify entity @s weapon.mainhand rd_asset_blocks:set_air_model

function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/get_loottable with entity @s equipment.mainhand.components."minecraft:custom_name"

execute if data entity @s equipment.mainhand.components."minecraft:custom_data".return run return run function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/draw_blank
execute unless data entity @s equipment.mainhand.components."minecraft:custom_data".loot_table run return run function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/change_mode

function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/fill_recipe with entity @s equipment.mainhand.components."minecraft:custom_data"

