say got called!

execute anchored eyes run particle rain ~ ~ ~ 0.5 0.5 0.5 1 5
playsound entity.skeleton.hurt hostile @a ~ ~ ~ 1 2

scoreboard players set @n[tag=!RD.chevalier.tank.melee,distance=..15] RD.ai_timer 70
execute if items entity @s[tag=!RD.chevalier.tank.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/melee