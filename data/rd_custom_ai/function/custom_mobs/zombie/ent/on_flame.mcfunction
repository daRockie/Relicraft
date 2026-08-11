particle lava ~ ~1 ~ 0.5 0.5 0.5 0.05 1
damage @s 2 lava

execute if entity @s[tag=!RD.runaway_inited,tag=!RD.already_ran] run function rd_custom_ai:movements/runaway/init {"speed":"0.4"}