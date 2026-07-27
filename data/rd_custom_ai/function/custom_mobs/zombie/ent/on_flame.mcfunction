particle lava ~ ~1 ~ 0.5 0.5 0.5 0.05 1
damage @s 2 in_fire

execute if predicate {condition:"random_chance",chance:0.01} run loot spawn ~ ~1 ~ loot rd_asset_mobs:drops/zombies/zombie/ent/oak

execute if entity @s[tag=!RD.runaway_inited] run function rd_custom_ai:movements/runaway/init {"speed":"0.4"}