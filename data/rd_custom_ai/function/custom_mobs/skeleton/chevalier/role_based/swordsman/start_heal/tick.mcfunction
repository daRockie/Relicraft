scoreboard players add @s RD.ai_timer 1

effect give @n[type=villager,tag=RD.runaway_entity] slowness 10 1 true

execute if score @s RD.ai_timer matches 5 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 10 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 15 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 20 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 25 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 30 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 35.. run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/start_heal/heal