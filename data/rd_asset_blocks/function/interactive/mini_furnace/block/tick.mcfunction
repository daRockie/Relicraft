function rd_asset_blocks:interactive/mini_furnace/block/condition_check

execute if entity @a[distance=..8] run data modify entity @s CustomNameVisible set value 1b
execute unless entity @a[distance=..8] run data modify entity @s CustomNameVisible set value 0b
