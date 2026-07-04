
execute if entity @s if block ^ ^ ^1 #doors positioned ^ ^ ^3 if entity @e[type=#rd_custom_ai:inhostile,distance=0..1.5] run function rd_custom_ai:movements/boomer_zombie/kill_and_boom with entity @s {}
execute if block ~ ~ ~ water run function rd_custom_ai:movements/boomer_zombie/kill_and_boom with entity @s {}