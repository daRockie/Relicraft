
execute unless score @s spawnRandom matches -2147483648..2147483647 store result score @s spawnRandom run random value 0..3

summon skeleton ~ ~ ~ {Tags:["RD.chevalier","RD.initialized","RD.royal_skeleton"],"CustomName":{text:"骸骨騎士"},equipment:{chest:{id:"iron_chestplate",components:{"trim":{material:"iron",pattern:"bolt"}}},head:{id:"player_head",components:{"enchantments":{"rd_custom_items:team/skeleton_royal":1},"profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgwN2RmOGEyY2RiNTg1MDBjN2QyNjY0MzNjM2FhMzU5M2QyM2RkMmU0Yzc5ZjQ4ZGFkZmE4NmJjOWJmNWQxZCJ9fX0="}]}}},legs:{id:"chainmail_leggings"},feet:{id:"iron_boots"}},Health:25,attributes:[{"id":"movement_speed",base:0.26f},{id:"knockback_resistance",base:0.4f},{id:"follow_range",base:32}],drop_chances:{head:0f,mainhand:0f,body:0f,offhand:0f}}
execute as @n[tag=RD.chevalier,type=skeleton,tag=!RD.chevalier.has_item] at @s run function rd_asset_mobs:summon/skeleton/normal/chevalier/loot

execute store result score @s RD.mobs.temp if entity @e[type=skeleton,tag=RD.chevalier,distance=..20]

# tellraw @a [{"score":{"name":"@s",objective:"RD.mobs.temp"}}]

execute if score @s RD.mobs.temp matches 10.. run return run function rd_asset_mobs:summon/vanish
execute unless score @s spawnRandom matches 1.. run return run function rd_asset_mobs:summon/vanish

scoreboard players remove @s spawnRandom 1
function rd_asset_mobs:summon/skeleton/normal/chevalier
