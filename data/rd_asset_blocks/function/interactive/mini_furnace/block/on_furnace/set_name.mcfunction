execute store result entity @s equipment.head.components."minecraft:custom_data".fuel float 100 run scoreboard players get @s RD.ai_timer
execute store result entity @s equipment.head.components."minecraft:custom_data".fuel_max float 100 run scoreboard players get @s RD.ai_timer_2

# tellraw @a [{"entity":"@s",nbt:"equipment.head.components.'minecraft:custom_data'.fuel_max"}]

execute store result entity @s equipment.head.components."minecraft:custom_data".fuel float 0.0005 run data get entity @s equipment.head.components."minecraft:custom_data".fuel 1
execute store result entity @s equipment.head.components."minecraft:custom_data".fuel_max float 0.0005 run data get entity @s equipment.head.components."minecraft:custom_data".fuel_max 1

# tellraw @a [{"entity":"@s",nbt:"equipment.head.components.'minecraft:custom_data'.fuel_max"}]

execute if score @s RD.ai_timer matches 1..99 run data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel 0 3
execute if score @s RD.ai_timer matches 100..1999 run data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel 0 4
execute if score @s RD.ai_timer matches 2000..19999 run data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel 0 5
execute if score @s RD.ai_timer matches 20000.. run data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel 0 6
data modify entity @s CustomName.extra[2].text set string entity @s equipment.head.components."minecraft:custom_data".fuel_max 0 4