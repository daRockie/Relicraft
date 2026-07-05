summon marker ~ ~ ~ {Tags:["RD.respawn"]}
data modify entity @n[type=marker,tag=RD.respawn] Pos set from entity @s respawn.pos
tellraw @a [{"entity":"@n[type=marker,tag=RD.respawn]",nbt:"Pos"}]
execute as @n[tag=RD.respawn,type=marker] at @s run forceload add ~16 ~16 ~-16 ~-16
tp @s @n[tag=RD.respawn]
kill @e[tag=RD.respawn,type=marker]
execute as @n[tag=RD.respawn,type=marker] at @s run forceload remove ~16 ~16 ~-16 ~-16