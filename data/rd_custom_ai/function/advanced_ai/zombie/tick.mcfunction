execute if entity @s[predicate=rd_asset_mobs:in_hostile,tag=!RD.notNormal] as @s run function rd_custom_ai:advanced_ai/zombie/movement

execute as @s[tag=RD.boomer_zombie,tag=ignited] if entity @s[nbt=!{IsBaby:1b}] run function rd_custom_ai:custom_mobs/boomer_zombie/ignited

execute as @s[tag=RD.boomer_zombie,tag=ignited] if entity @s[nbt={IsBaby:1b}] run function rd_custom_ai:custom_mobs/boomer_zombie/baby/ignited_baby

execute if entity @s[tag=RD.zombie_leader] run function rd_custom_ai:custom_mobs/zombie/leader/tick

execute if entity @s[tag=RD.miner_zombie] run function rd_custom_ai:custom_mobs/zombie/miner/tick

execute if entity @s[tag=RD.ent] run function rd_custom_ai:custom_mobs/zombie/ent/tick

execute if entity @s[tag=!RD.archer_zombie] if items entity @s weapon *[custom_data={RD.item:"RD.shortbow"}] run tag @s add RD.archer_zombie

execute if entity @s[tag=RD.boomer_zombie,tag=!RD.no_chase] run tag @s add RD.no_chase
execute if entity @s[tag=RD.boomer_zombie] run function rd_custom_ai:custom_mobs/auto_detonate

execute if entity @s[tag=RD.magma_infection] run function rd_custom_ai:custom_mobs/magma_infection/tick