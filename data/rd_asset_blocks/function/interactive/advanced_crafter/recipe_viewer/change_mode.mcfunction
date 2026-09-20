execute if items entity @a[distance=..16,sort=nearest] player.cursor *[custom_data={TempItem:1b,RD.item:"RD.internal.return_to_recipe_screen"}] run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 3 0.5

particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 15

execute positioned ~ ~1 ~ run function rd_asset_mobs:summon/object/text_display/summon {"text":{"text":"このアイテムは改良型作業台でクラフトできません！",color:"red",bold:1b},timer:40}

function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode
clear @a *[custom_data~{TempItem:1b}]
