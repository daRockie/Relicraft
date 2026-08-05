particle crit ~ ~ ~ 0.5 0.5 0.5 0.05 5
particle block{block_state:"oak_log"} ~ ~ ~ 0.5 0.5 0.5 0.05 15

execute if predicate {type:"random_chance",chance:0.4} run loot spawn ~ ~1 ~ loot rd_asset_mobs:drops/zombies/zombie/ent/oak

playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 1