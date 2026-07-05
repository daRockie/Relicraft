execute if entity @s[tag=!RD.chevalier.tank.melee] run playsound item.shield.block hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=!RD.chevalier.tank.melee] run playsound entity.skeleton.hurt hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=!RD.chevalier.tank.melee] run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.05 15
scoreboard players add @s RD.ai_timer 20