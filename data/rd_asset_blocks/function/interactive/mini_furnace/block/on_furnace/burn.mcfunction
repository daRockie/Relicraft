particle minecraft:flame ^ ^0.1 ^0.2 0.05 0.05 0.05 0.005 1
particle minecraft:smoke ^ ^0.1 ^0.2 0.05 0.05 0.05 0.005 1

data modify entity @n[type=item_display,tag=RD.block.mini_furnace,distance=..0.5] item.components."minecraft:profile".properties[].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc1MjBkYTM2YzQ3NWQ0MzY2MGZkZDZhYmJiZGMxMTY1ZjNiZTJkNDNhMWNmNmM0MmU1NDFkYzBlNzRhMjViYiJ9fX0="

execute if score @s RD.ai_timer matches 30000.. run scoreboard players set @s RD.ai_timer 30000

scoreboard players remove @s RD.ai_timer 1

function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/furnace/reduce

function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/set_name