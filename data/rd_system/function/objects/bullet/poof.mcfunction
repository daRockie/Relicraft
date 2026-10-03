execute if block ~ ~ ~ #rd_custom_ai:glass_block run setblock ~ ~ ~ air destroy
playsound minecraft:block.bone_block.break master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @a ~ ~ ~ 0.1 0.75
particle minecraft:item{item:"arrow"} ~ ~0.25 ~ 0.05 0.05 0.05 0.25 3
kill @s