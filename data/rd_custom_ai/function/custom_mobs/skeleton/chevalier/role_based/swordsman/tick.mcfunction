execute on target run tag @s add skeleton.target

execute if entity @n[tag=skeleton.target,distance=0..12] run scoreboard players add @s RD.ai_timer 1

execute if score @s[nbt={OnGround:1b}] RD.ai_timer matches 80.. if entity @n[tag=skeleton.target,distance=0..6] run function rd_custom_ai:custom_mobs/skeleton/chevalier/role_based/swordsman/dodge

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s RD.ai_timer 40
