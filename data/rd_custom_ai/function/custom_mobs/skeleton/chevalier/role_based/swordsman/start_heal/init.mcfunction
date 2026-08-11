execute if entity @s[tag=RD.drink_potion] run return fail
execute if entity @s run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/start_heal/have_drink
tag @s add RD.drink_potion