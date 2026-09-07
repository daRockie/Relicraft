scoreboard players add @s RD.ai_timer 1
scoreboard players set $STATIC.const_5 RD.mobs.temp 5

scoreboard players operation @s RD.ai_timer %= $STATIC.const_5 RD.mobs.temp

effect give @n[type=villager,tag=RD.runaway_entity] slowness 10 1 true

execute if score @s RD.ai_timer matches 1 run playsound entity.generic.drink hostile @a ~ ~ ~ 0.5
execute if score @s RD.ai_timer matches 1 run scoreboard players add @s RD.ai_timer_2 1

execute if score @s RD.ai_timer_2 matches 5.. run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/start_heal/heal