$scoreboard players set $.amount RD.ai_timer $(amount)

particle minecraft:campfire_cosy_smoke ^ ^0.1 ^0.2 0.05 0.05 0.05 0.05 5

particle minecraft:flame ^ ^0.1 ^0.2 0.5 0.5 0.5 0 15


execute store result score $.item_count RD.ai_timer run data get entity @s Item.count

scoreboard players operation $.amount RD.ai_timer *= $.item_count RD.ai_timer

scoreboard players operation @n[type=armor_stand,tag=RD.block.interactive.mini_furnace,distance=..2] RD.ai_timer += $.amount RD.ai_timer

kill @s

execute as @n[type=armor_stand,tag=RD.block.interactive.mini_furnace,distance=..2] run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/set_name