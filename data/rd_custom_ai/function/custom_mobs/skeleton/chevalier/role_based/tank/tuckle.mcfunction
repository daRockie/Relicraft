execute if entity @s[tag=!RD.chevalier.tank.melee] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/tank/melee
playsound entity.goat.long_jump hostile @a ~ ~ ~ 1 1

# Give me an backup!
execute anchored eyes facing entity @n[tag=skeleton.target] feet unless score @s RD.health matches 5.. positioned ^ ^ ^-4 run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward

# 
execute anchored eyes facing entity @n[tag=skeleton.target] feet if score @s RD.health matches 5.. positioned ^ ^ ^3.5 run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward
scoreboard players reset @s RD.ai_timer