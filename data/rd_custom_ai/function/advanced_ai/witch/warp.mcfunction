particle explosion ~ ~1 ~
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.05 15
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

execute store result score $.RD.initernal.mob.y_pos RD.mobs.temp run data get entity @s Pos[1]
execute store result score $.RD.initernal.mob.threshold RD.mobs.temp run random value 1..3

scoreboard players operation $.RD.initernal.mob.y_pos RD.mobs.temp += $.RD.initernal.mob.threshold RD.mobs.temp

execute store result storage rockietools:mob_data temp_warp.Pos int 1 run scoreboard players get $.RD.initernal.mob.y_pos RD.mobs.temp

data modify storage rockietools:mob_data temp_warp.maxRange set value 4
data modify storage rockietools:mob_data temp_warp.spreadDistance set value 0

function rd_custom_ai:movements/warp_randomly with storage rockietools:mob_data temp_warp

data remove storage rockietools:mob_data temp_warp

particle explosion ~ ~1 ~

scoreboard players reset @s RD.ai_timer