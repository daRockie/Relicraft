playsound item.firecharge.use block @a ~ ~1 ~ 1 1

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:logs_that_burn run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:60}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:planks run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:60}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:wooden_slabs run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:60}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:furnace_minecart_fuel run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:320}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:saplings run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:20}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 dead_bush run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:20}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 leaf_litter run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:20}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:bamboo_blocks run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:60}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:wool_carpets run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:10}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #rd_asset_blocks:wooden_tools run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:120}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 coal_block run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:3200}

execute as @n[type=item,distance=..2,predicate=rd_asset_blocks:item/has_fuel] if items entity @s container.0 #minecraft:boats run function rd_asset_blocks:interactive/mini_furnace/block/on_furnace/add_fuel {amount:100}

