execute if entity @s[tag=!RD.chevalier.tank.melee] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/melee
playsound entity.goat.long_jump hostile @a ~ ~ ~ 1 1
execute anchored eyes facing entity @n[tag=skeleton.target] feet positioned ^ ^ ^3.5 run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward