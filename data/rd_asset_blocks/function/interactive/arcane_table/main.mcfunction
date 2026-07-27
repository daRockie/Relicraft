execute if entity @s[tag=!RD.placed_barrel] run function rd_asset_blocks:interactive/arcane_table/initialize
execute if entity @s[tag=RD.placed_barrel] unless block ~ ~ ~ barrel[facing=up]{CustomName:{"bold":true}} run function rd_asset_blocks:interactive/arcane_table/destroy
# ブロックディスプレイ
execute if entity @s[tag=RD.placed_barrel] if block ~ ~ ~ barrel[facing=up]{CustomName:{"bold":true}} unless entity @e[type=item_display,distance=..0.5,tag=RD.block.arcane_table] run function rd_asset_blocks:interactive/arcane_table/replace_block_display

execute as @e[type=item_display,tag=RD.block.arcane_table,distance=0..0.3] store result entity @s brightness.block int 1 run function rd_asset_blocks:get_brightness
execute as @e[type=item_display,tag=RD.block.arcane_table,distance=0..0.3] store result entity @s brightness.sky int 1 run function rd_asset_blocks:get_brightness

# ホッパー使うなアホ
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace hopper destroy

tp @s ~ ~ ~ ~5 ~

particle witch ^ ^ ^1 0.05 1 0.05 0 3

particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 1

# execute if predicate {condition:"random_chance",chance:0.01} run playsound entity.guardian.hurt block @a ^ ^ ^1 1 0.5

# 音止め
execute if block ~ ~ ~ barrel[facing=up,open=false]{CustomName:{"bold":true}} if entity @s[tag=opening] as @a[distance=0..4] run function rd_custom_items:custom_block/stop_sound
execute if block ~ ~ ~ barrel[facing=up,open=false]{CustomName:{"bold":true}} if entity @s[tag=opening] run function rd_asset_blocks:interactive/arcane_table/block/closed

execute if block ~ ~ ~ barrel[facing=up,open=true]{CustomName:{"bold":true}} run function rd_asset_blocks:interactive/arcane_table/block/tick