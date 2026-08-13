# particle happy_villager ~ ~1 ~

execute if entity @e[predicate=rd_asset_blocks:item/has_fuel,distance=..1,type=item] run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/fill_fuel

execute if score @s RD.ai_timer matches 1.. run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/burn
execute unless score @s RD.ai_timer matches 1.. run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/extinguish