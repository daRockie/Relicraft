data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon creeper ~ ~ ~ {DeathLootTable:"rd_asset_mobs:drops/creeper/nuka_creeper",powered:1b,Fuse:220,ExplosionRadius:25,equipment:{chest:{id:"iron_chestplate",components:{"enchantments":{"blast_protection":255}}}},drop_chances:{chest:0f},CustomName:[{text:"ヌカクリーパー",bold:true,color:red}],CustomNameVisible:1b,Health:80,Glowing:0b,Tags:["RD.spawned","RD.initialized","RD.nuka_creeper","RD.has_head_entity"],attributes:[{id:follow_range,base:100f},{id:safe_fall_distance,base:1024f},{id:knockback_resistance,base:1f},{id:burning_time,base:0f},{id:movement_speed,base:0.1f},{id:scale,base:1.25f},{id:step_height,base:1f},{id:max_health,base:60f}],\
Passengers:[{id:"item_display",Tags:["RD.object","RD.head_entity"],item:{id:"player_head",components:{"profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc5MjIwNTQ1ZTQ2ZDgyMjkzZWZiODcwZjkwZmNhOGYwNzVjZmZhYmEyZWIwNmFmM2UzNWUxNTliN2EzMWRhNSJ9fX0="}]}}},transformation:{left_rotation:[0,200,0,1],right_rotation:[0,0,0,1],translation:[0,0.1,0],scale:[2,2,2]}}]}

tp @s ~ ~-200 ~
kill @s