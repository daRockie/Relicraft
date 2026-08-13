playsound item.firecharge.use block @a ~ ~1 ~ 1 1

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:logs_that_burn run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:300}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:planks run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:300}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:furnace_minecart_fuel run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:1600}