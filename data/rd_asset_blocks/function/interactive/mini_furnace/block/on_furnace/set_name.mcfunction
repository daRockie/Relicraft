execute store result entity @s equipment.head.components."minecraft:custom_data".fuel int 1 run scoreboard players get @s RD.ai_timer
execute store result entity @s equipment.head.components."minecraft:custom_data".fuel_max int 1 run scoreboard players get @s RD.ai_timer_2

data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel
data modify entity @s CustomName.extra[1] set string entity @s equipment.head.components."minecraft:custom_data".fuel_max