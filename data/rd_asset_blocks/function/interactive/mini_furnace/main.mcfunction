execute if entity @s[tag=!RD.placed_barrel] run function rd_asset_blocks:interactive/mini_furnace/initialize
execute if entity @s[tag=RD.placed_barrel] unless block ~ ~ ~ flower_pot run function rd_asset_blocks:interactive/mini_furnace/destroy
# ブロックディスプレイ
execute if entity @s[tag=RD.placed_barrel] if block ~ ~ ~ flower_pot unless entity @e[type=item_display,distance=..0.5,tag=RD.block.mini_furnace] run function rd_asset_blocks:interactive/mini_furnace/replace_block_display

execute as @e[type=item_display,tag=RD.block.mini_furnace,distance=0..0.3] store result entity @s brightness.block int 1 run function rd_asset_blocks:get_brightness
execute as @e[type=item_display,tag=RD.block.mini_furnace,distance=0..0.3] store result entity @s brightness.sky int 1 run function rd_asset_blocks:get_brightness

# execute if predicate {condition:"random_chance",chance:0.01} run playsound entity.guardian.hurt block @a ^ ^ ^1 1 0.5

# 音止め
execute if block ~ ~ ~ flower_pot run function rd_asset_blocks:interactive/mini_furnace/block/tick