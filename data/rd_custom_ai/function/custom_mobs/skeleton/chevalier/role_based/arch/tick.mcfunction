execute on target run tag @s add skeleton.target

execute if entity @n[tag=skeleton.target,distance=0..12] run scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 40..80 if entity @n[tag=skeleton.target,distance=0..6] if items entity @s[tag=!RD.chevalier.arch.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/arch/melee
execute if score @s RD.ai_timer matches 40..80 if entity @n[tag=skeleton.target,distance=7..] if items entity @s[tag=RD.chevalier.arch.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/arch/bow
execute if score @s RD.ai_timer matches 40..80 if entity @n[tag=skeleton.target,distance=0..5] if items entity @s[tag=!RD.chevalier.arch.melee] weapon.* *[custom_data~{RD.hasAlready:1b}] if entity @n[type=skeleton,tag=RD.chevalier.tank,distance=..16] as @n[type=skeleton,tag=RD.chevalier.tank,distance=..16] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/arch/call_tank

execute if score @s RD.ai_timer matches 120.. if entity @s[tag=RD.chevalier.arch.melee] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/arch/bow
execute if score @s RD.ai_timer matches 120.. anchored eyes facing entity @n[tag=skeleton.target] feet positioned ^ ^ ^-5 run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/arch/back_step

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s RD.ai_timer 40


tag @n[tag=skeleton.target] remove skeleton.target