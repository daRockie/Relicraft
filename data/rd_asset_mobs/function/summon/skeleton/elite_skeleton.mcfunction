data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon skeleton ~ ~ ~ {DeathLootTable:"rd_asset_mobs:drops/skeleton/normal/elite",CustomName:[{text:"エリートスケルトン"}],CanPickUpLoot:1b,Tags:["RD.spawned","RD.initialized","elite_skeleton"],equipment:{mainhand:{id:bow,components:{custom_data:{HasAlready:1}}},head:{id:iron_helmet}},attributes:[{id:follow_range,base:32f},{id:"safe_fall_distance",base:10f}]}
tp @s ~ ~-200 ~
kill @s