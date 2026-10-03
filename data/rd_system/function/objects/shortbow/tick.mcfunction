execute unless block ~ ~0.25 ~ #rd_custom_ai:no_collision run function rd_system:objects/shortbow/poof

execute if score @s RD.ai_timer matches 40.. run function rd_system:objects/shortbow/poof

execute if entity @s[tag=RD.randomAngle] run function rd_custom_items:items/shortbow/recoil with entity @s equipment.head.components."minecraft:custom_data".data

$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[distance=0.0000001..2,tag=!RD.shortbow,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)},type=!#ammos_dont_damage_to,type=!text_display,type=!marker] positioned as @s run function rd_system:objects/shortbow/damage with entity @s equipment.head.components."minecraft:custom_data".data

# 移動
scoreboard players add @s RD.ai_timer 1
$tp ^ ^ ^$(speed)
particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 2 1