playsound block.note_block.bit hostile @a ~ ~ ~ 1 2

execute if entity @s[tag=RD.parachute_creeper.killed_chicken] run return fail

execute if entity @s[predicate=rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] facing entity @n[type=player,predicate=!rd_system:effects/invisibility_existance,gamemode=!creative,gamemode=!spectator,tag=creeper.target] feet run tp @s ~ ~ ~ ~ 0
execute if entity @s[predicate=!rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] facing entity @n[type=player,predicate=!rd_system:effects/invisibility_existance,gamemode=!creative,gamemode=!spectator,tag=!creeper.target] feet run tp @s ~ ~ ~ ~ 0
execute if entity @s[predicate=!rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] facing entity @p[gamemode=!creative,gamemode=!spectator,predicate=!rd_system:effects/invisibility_existance] feet run tp @s ~ ~ ~ ~ 0

#playsound block.note_block.bit hostile @a ~ ~ ~ 1 1