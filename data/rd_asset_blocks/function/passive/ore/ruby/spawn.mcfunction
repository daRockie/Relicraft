# 置換可能なブロックではない場合処理を終了
execute unless block ~ ~ ~ #can_ores_generate run return run kill @s 

# ブロック（視覚効果）
$summon minecraft:item_display $(pos) {glow_color_override:14102054,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0f,0.50005f,0f],scale:[2.0005f,2.0005f,2.0005f]},item:{id:"minecraft:player_head",components:{profile:{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFmY2QwNWUyZWRmMDQ2NDBmZTIxZDU1ZDEyZGQ5ZGIyMTUwNGJlYjRhMTE2NGNkMDIwZjc5NDM0MTliNGU2NCJ9fX0=",name:"textures"}]},"minecraft:custom_data":{effects:[],data:[{key:"kill @s"},{key:"loot spawn ~ ~ ~ loot rd_asset_blocks:block/ruby_ore"},{key:"kill @n[type=item,nbt={Item:{id:'minecraft:redstone'}},distance=0..1,tag=!RD.initialized]"}]}}},brightness:{block:15,sky:1},width:1,height:1,Tags:["RD.type.block","RD.block.passive","RD.ore_ruby","RD.type.block.deepslate","RD.type.block.ore"]}

# オフセット
execute as @n[type=item_display,tag=RD.ore_ruby] at @s run tp @s ~ ~ ~

# ブロック
$setblock $(pos) redstone_ore