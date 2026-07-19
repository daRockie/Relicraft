execute if entity @s[tag=RD.block.glowing] run function rd_asset_blocks:sys/effect/glowing/tick

# data modify entity @n[type=minecraft:item_display] item.components."minecraft:custom_data".data.[].effects append value {tag:"glowing",duration:100}