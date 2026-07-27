stopsound @a * entity.armor_stand.place
setblock ~ ~ ~ barrel[facing=up]{CustomName:{"text":"神秘的な作業台","bold":true}}
# function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode

function rd_asset_blocks:interactive/arcane_table/block/fill_item/startup

scoreboard players set @s RD.isCrafting 1
tag @s add RD.placed_barrel