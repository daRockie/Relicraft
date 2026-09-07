# say mode changed
# function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_startup
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/call_recipe {"keys":"{key:\"ui_buttons\"}"}

tag @s remove RD.block.interactive.advanced_crafter.crafting_mode

clear @a *[custom_data={TempItem:1b}]

playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 2
#say ERROR!
execute if score @s RD.isCrafting matches 1 if items block ~ ~ ~ rd_asset_blocks:crafter *[!custom_data~{TempItem:1b} | !custom_data] run return run function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode_error
#say recipe viewer
execute if score @s RD.isCrafting matches 2 run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
#say NOT ERROR, RD.initialized
execute if score @s RD.isCrafting matches 1 unless items block ~ ~ ~ container.* *[!custom_data~{TempItem:1b} | !custom_data] run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
#say END
tag @s add RD.block.interactive.advanced_crafter.crafting_mode
execute if score @s RD.isCrafting matches 0 run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode