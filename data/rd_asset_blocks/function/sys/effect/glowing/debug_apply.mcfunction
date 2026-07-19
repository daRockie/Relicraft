$data modify entity @s[type=minecraft:item_display] item.components."minecraft:custom_data".effects append value {tag:"glowing",duration:$(duration)}
tag @s add RD.block.glowing