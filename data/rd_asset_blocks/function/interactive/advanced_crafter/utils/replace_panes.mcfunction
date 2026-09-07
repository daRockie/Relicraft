# say replace

execute if items entity @a[distance=..10,sort=nearest] player.cursor *[custom_data~{RD.item:"RD.item_counter"}] run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/multiplier/multiply

execute if score @s RD._BOOLEAN matches 1 run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/green_panes
execute if score @s RD._BOOLEAN matches 0 run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/black_panes
