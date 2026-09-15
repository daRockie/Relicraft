#say drawing blank

playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 1
data modify storage rockietools:custom_recipe temp.input.keys set from storage rockietools:custom_recipe temp.input.parent

execute unless data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_recipe with storage rockietools:custom_recipe temp.input
execute if data storage rockietools:custom_recipe temp.input.no_keys run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_startup

function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
clear @a *[custom_data~{TempItem:1b}]