say oo
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 0.95

execute if items entity @a[distance=..16,sort=nearest] player.cursor *[custom_data={TempItem:1b,RD.item:"RD.internal.return_to_recipe_screen"}] run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode
clear @a *[custom_data~{TempItem:1b}]
