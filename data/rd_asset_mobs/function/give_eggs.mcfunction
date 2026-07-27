# エリートスケルトン
give @s armor_stand[entity_data={id:"armor_stand",Tags:["RD.cmd","RD.object"],equipment:{head:{id:"command_block",components:{custom_data:{data:[{key:"kill @s"},{key:"function rd_asset_mobs:summon/skeleton/normal/chevalier"}]}}}}},item_name={"text":"骸骨騎士のスポーンエッグ"},item_model="skeleton_spawn_egg"]

# ブーマーゾンビ
give @p zombie_spawn_egg[custom_name=[{"text":"ブーマーゾンビのスポーンエッグ","italic":false}],entity_data={id:zombie,CustomName:[{text:"ブーマー　ゾンビ"}],Health:25,Silent:1b,Tags:[RD.boomer_zombie,RD.initialized,RD.spawned],equipment:{head:{id:tnt}},attributes:[{id:movement_speed,base:0.3f},{id:max_health,base:25f}]}] 1

# 見習い魔導士
give @p skeleton_spawn_egg[custom_name=[{"text":"見習い魔導士のスポーンエッグ","italic":false}],entity_data={id:skeleton,CustomName:[{text:"見習い魔導士"}],Health:20,Tags:[RD.enemy.wizard.1,RD.initialized,RD.spawned],equipment:{mainhand:{id:bow},offhand:{id:tipped_arrow,components:{potion_contents:{custom_color:6192150,custom_effects:[{id:slowness,duration:3,amplifier:1}]},custom_name:[{text:"麻酔薬が塗られた矢",italic:false}]}},head:{id:player_head,components:{profile:{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQwN2RhYTg3YzQyZjg2YzA3ODk1ZmQ0NTUwMTkwZDEwOGFlNzJiYThiNzllYzMzNTEzNmEyYmQ0MDczY2Y5ZCJ9fX0=",name:textures}]},custom_name:[{text:"見習い魔導士のゴーグル",italic:false,bold:true}],lore:[[{text:"見習い魔導士がつける仮面。",italic:false}],[{text:"これがないと魔導士として認めてもらえない",italic:false}],"",[{text:"クラフト素材",italic:false,underlined:true,color:yellow,bold:true}]]}},chest:{id:leather_chestplate,components:{dyed_color:4673362}},legs:{id:iron_leggings},feet:{id:leather_boots}},drop_chances:{head:0.1f},attributes:[{id:movement_speed,base:0.4f},{id:follow_range,base:64f},{id:max_health,base:20f}]}] 1

# アチャーゾンビ
give @s armor_stand[entity_data={id:"armor_stand",Tags:["RD.cmd","RD.object"],equipment:{head:{id:"command_block",components:{custom_data:{data:[{key:"kill @s"},{key:"function rd_asset_mobs:summon/zombie/archer/zombie"}]}}}}},item_name={"text":"アーチャーゾンビのスポーンエッグ"},item_model="zombie_spawn_egg"]

# リーダーゾンビ
give @s armor_stand[entity_data={id:"armor_stand",Tags:["RD.cmd","RD.object"],equipment:{head:{id:"command_block",components:{custom_data:{data:[{key:"kill @s"},{key:"function rd_asset_mobs:summon/zombie/leader/zombie"}]}}}}},item_name={"text":"リーダーゾンビのスポーンエッグ"},item_model="zombie_spawn_egg"]

# エント
give @s armor_stand[entity_data={id:"armor_stand",Tags:["RD.cmd","RD.object"],equipment:{head:{id:"command_block",components:{custom_data:{data:[{key:"kill @s"},{key:"function rd_asset_mobs:summon/area_variant/biome/forest/summon/ent_oak"}]}}}}},item_name={"text":"エントのスポーンエッグ"},item_model="zombie_spawn_egg"]