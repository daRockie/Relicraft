# execute as @a[tag=!RD.scanned_chunk] if dimension minecraft:overworld run function rd_asset_blocks:test_

execute if entity @s[tag=RD.zombie_flag] run function rd_custom_ai:object/flags/zombie_flag/tick
execute if entity @s[tag=RD.zombie_flag_pre] run function rd_custom_ai:object/flags/zombie_flag/thrown_tick

execute if entity @s[tag=RD.death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] positioned ~-2 ~3 ~-2 as @e[type=armor_stand,tag=RD.death_finder,tag=!vehicleiskilled,dx=1,dy=-10,dz=1] run tag @s add vehicleiskilled
execute if entity @s[tag=RD.death_finder,tag=vehicleiskilled] run function rd_custom_ai:object/death_finder
execute if entity @s[tag=RD.on_land,nbt={OnGround:1b}] run function rd_custom_ai:object/on_land

execute if entity @s[type=mannequin] run function rd_custom_ai:object/mannequin/

# execute if entity @s[tag=RD.head] run function rd_custom_ai:object/trace_head_moving

execute if entity @s[tag=RD.nuka_creeper.countdown] unless entity @n[tag=RD.nuka_creeper.ignited,distance=0..10] run kill @s

execute if entity @s[tag=RD.cmd,tag=!RD.initialized] run function rd_custom_ai:object/looper

execute if entity @s[tag=RD.head_entity] unless entity @n[tag=RD.has_head_entity,distance=0..3] run kill @s

execute if entity @s[tag=RD.marker.ore_generation,tag=!RD.initialized] run function rd_custom_ai:object/marker/ore_generator/

execute if entity @s[type=armor_stand,tag=mummy_reviving] at @s run function rd_custom_ai:movements/mummy/mummy_revive_obj

execute if entity @s[tag=RD.runaway_entity] run function rd_custom_ai:movements/runaway/tick with entity @s equipment.head.components."minecraft:custom_data"

execute if entity @s[tag=RD.light_temp] run function rd_custom_ai:object/marker/light/ with entity @s data