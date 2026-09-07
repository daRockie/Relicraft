summon marker ~ ~ ~ {Tags:["RD.jump_marker"]}
# particle happy_villager ~ ~ ~
# playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1

execute store result score motion_x RD.mobs.temp run data get entity @s Pos[0] 500
execute store result score motion_y RD.mobs.temp run data get entity @s Pos[1] 500
execute store result score motion_z RD.mobs.temp run data get entity @s Pos[2] 500

execute store result score motion_x.distance RD.mobs.temp run data get entity @n[tag=RD.jump_marker,distance=..80] Pos[0] 500
execute store result score motion_y.distance RD.mobs.temp run data get entity @n[tag=RD.jump_marker,distance=..80] Pos[1] 500
execute store result score motion_z.distance RD.mobs.temp run data get entity @n[tag=RD.jump_marker,distance=..80] Pos[2] 500

scoreboard players operation motion_x.distance RD.mobs.temp -= motion_x RD.mobs.temp
scoreboard players operation motion_y.distance RD.mobs.temp -= motion_y RD.mobs.temp
scoreboard players operation motion_z.distance RD.mobs.temp -= motion_z RD.mobs.temp

kill @e[type=marker,distance=0..16,tag=RD.jump_marker]

# tellraw @a [{"score":{"objective":"RD.mobs.temp","name":"motion_x.distance"}},", ",{"score":{"objective":"RD.mobs.temp","name":"motion_y.distance"}},", ",{"score":{"objective":"RD.mobs.temp","name":"motion_z.distance"}}]

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get motion_x.distance RD.mobs.temp
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get motion_y.distance RD.mobs.temp
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get motion_z.distance RD.mobs.temp

scoreboard players reset motion_x
scoreboard players reset motion_y
scoreboard players reset motion_z
scoreboard players reset motion_x.distance
scoreboard players reset motion_y.distance
scoreboard players reset motion_z.distance