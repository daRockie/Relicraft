execute if entity @s[tag=RD.runaway_inited,tag=!RD.chevalier.swordsman.already_used_potion,tag=RD.chevalier.swordsman] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/runaway
execute if entity @s[tag=RD.chevalier.swordsman,tag=RD.chevalier.swordsman.drinking] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/start_heal/tick
