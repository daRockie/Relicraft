
execute anchored eyes if block ~ ~1 ~ water run data modify entity @s pose set value "swimming"
execute anchored eyes unless block ~ ~1 ~ water run data modify entity @s pose set value "standing"

execute if entity @s[tag=RD.pirate] at @s unless entity @n[distance=0..3,tag=RD.pirate,type=piglin_brute] run function rd_asset_mobs:system/mannequin_kill {"death_sound":"entity.zombie.death",vol:1,pitch:1}

execute if entity @s[tag=RD.void_bellwether] at @s unless entity @n[distance=0..3,tag=RD.void_bellwether,type=creeper] run function rd_asset_mobs:system/mannequin_kill with entity @s equipment.body.components."minecraft:custom_data".death_sound