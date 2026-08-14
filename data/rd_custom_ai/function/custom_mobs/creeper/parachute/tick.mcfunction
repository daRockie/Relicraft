scoreboard players add @s RD.ai_timer 1
scoreboard players set #mod10 RD.ai_timer 10

function rd_custom_ai:advanced_ai/creeper/head_offset {"scale":1.35}

execute on target run tag @s add creeper.target

execute unless data entity @s Passengers[] run item replace entity @s armor.chest with air

execute store result score @s RD.ai_timer_2 run scoreboard players operation @s RD.ai_timer %= #mod10 RD.ai_timer

execute if score @s[nbt={ignited:0b}] RD.ai_timer_2 matches 9 run function rd_custom_ai:movements/parachute_direction_change

execute unless block ~ ~-0.3 ~ #rd_custom_ai:no_collision run function rd_custom_ai:custom_mobs/creeper/parachute/on_ground

execute if block ~ ~-0.3 ~ water run function rd_custom_ai:custom_mobs/creeper/parachute/on_ground

tag @n[tag=creeper.target] remove creeper.target