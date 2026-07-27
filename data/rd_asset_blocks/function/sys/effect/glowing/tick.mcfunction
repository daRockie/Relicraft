execute if entity @s[tag=!RD.block.glowing.initalized] run function rd_asset_blocks:sys/effect/glowing/initialize

# particle glow ~ ~ ~ 0.5 0.5 0.5 0.05 2

execute if data entity @s item.components."minecraft:custom_data".effects[{tag:"glowing"}] run function rd_asset_blocks:sys/effect/glowing/set_macro