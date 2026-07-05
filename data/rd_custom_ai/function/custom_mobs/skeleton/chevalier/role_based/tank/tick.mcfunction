execute on target run tag @s add skeleton.target

execute if entity @n[tag=skeleton.target,distance=0..12] run scoreboard players add @s RD.ai_timer 1
execute if score @s RD.ai_timer matches ..100 if entity @n[tag=skeleton.target,distance=13..] if items entity @s[tag=!RD.chevalier.tank.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/melee

execute if score @s RD.ai_timer matches 20..80 if entity @n[tag=skeleton.target,distance=0..6] if items entity @s[tag=RD.chevalier.tank.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/guard
execute if score @s RD.ai_timer matches 81..100 if entity @n[tag=skeleton.target,distance=0..6] if items entity @s[tag=!RD.chevalier.tank.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/melee
execute if score @s RD.ai_timer matches 40..60 if entity @n[tag=skeleton.target,distance=7..10] if items entity @s[tag=RD.chevalier.tank.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/guard

execute if score @s RD.ai_timer matches 150.. run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/tuckle

execute if entity @s[nbt={HurtTime:10s},tag=!RD.chevalier.tank.melee] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/hurt_guarding


tag @n[tag=skeleton.target] remove skeleton.target