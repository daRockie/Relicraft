tag @s add RD.block.interactive.advanced_crafter.crafting_mode
stopsound @a * entity.armor_stand.place

setblock ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}}

function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode

function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/black_panes

scoreboard players set @s RD.isCrafting 1

scoreboard players set $CHANGEABLE.craft_amount RD.temp0 1

execute store result storage rockietools:custom_recipe temp.craft_amount int 1 run scoreboard players get $CHANGEABLE.craft_amount RD.temp0

tag @s add placed_barrel
tag @s add RD.block.interactive.advanced_crafter.black_panes