# say calculating

execute store result score @s RD.ai_timer_2 run data get entity @s item.components."minecraft:custom_data".effects[{tag:"glowing"}].duration

scoreboard players remove @s RD.ai_timer_2 1

# tellraw @a [{"text":"Glowing: "}, {"score":{name:"@s",objective:"RD.ai_timer_2"}}]

execute unless score @s RD.ai_timer_2 matches 1.. run return run function rd_asset_blocks:sys/effect/glowing/remove_tag

execute store result entity @s item.components."minecraft:custom_data".effects[{tag:"glowing"}].duration int 1 run scoreboard players get @s RD.ai_timer_2