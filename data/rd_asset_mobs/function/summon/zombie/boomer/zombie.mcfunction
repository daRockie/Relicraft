data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute if score #_PROGRESSION RD.mobs.temp matches 0 run summon zombie ~ ~ ~ {DeathLootTable:"rd_asset_mobs:drops/zombies/zombie/boomer",CustomName:[{text:"ブーマー　ゾンビ"}],Health:25,Silent:1b,Tags:["RD.boomer_zombie","RD.initialized","RD.spawned"],equipment:{head:{id:player_head,components:{profile:{name:"MHF_TNT2"}}}},attributes:[{id:movement_speed,base:0.3f},{id:follow_range,base:2048f},{id:max_health,base:25f}],DeathTime:19,drop_chances:{head:0f}}
execute if score #_PROGRESSION RD.mobs.temp matches 1 run data modify entity @n[type=zombie,tag=RD.boomer_zombie] equipment.chest set value {id:"leather_chestplate",components:{dyed_color:11546150,enchantment_glint_override:1b,attribute_modifiers:[{id:"kb_resistance",operation:"add_value",amount:0.3,type:knockback_resistance,slot:"chest"}],trim:{material:"iron",pattern:"flow"}}}
tp @s ~ ~-200 ~
kill @s