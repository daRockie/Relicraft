execute on target run tag @s add skeleton.target

particle rain ~ ~2 ~ 0.5 0.5 0.5 0.05 1

execute if entity @n[tag=skeleton.target,distance=6..] if entity @s[tag=!RD.drink_potion,tag=!RD.chevalier.swordsman.drinking] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/start_heal/init

tag @n[tag=skeleton.target] remove skeleton.target
