data remove entity @s item.components."minecraft:custom_data".effects[{tag:"glowing"}]
tag @s remove RD.block.glowing
tag @s remove RD.block.glowing.initalized
scoreboard players reset @s RD.ai_timer_2
data modify entity @s Glowing set value 0b