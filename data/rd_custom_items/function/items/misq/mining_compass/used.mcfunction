playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 1
particle entity_effect{color:16759837} ~ ~1 ~ 0.5 0.5 0.5 0.05 25
particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 25
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 1

execute as @e[type=minecraft:item_display,tag=RD.type.block.ore,distance=..10] run function rd_asset_blocks:sys/effect/glowing/debug_apply {duration:"200"}