stopsound @a * entity.armor_stand.place
setblock ~ ~ ~ flower_pot

# ヘッドにアイテム挿入
item replace entity @s armor.head with barrier[item_model=air,custom_data={fuel_max:30000,fuel:0}]

# スコア
execute unless score @s RD.ai_timer matches -2147483648..2147483647 run scoreboard players set @s RD.ai_timer 0
execute unless score @s RD.ai_timer_2 matches -2147483648..2147483647 run scoreboard players set @s RD.ai_timer_2 30000

# 名前
data modify entity @s CustomName set value [{"text":"",extra:[{"text":"秒",color:white,italic:false}]},{"text":" / ",color:"gray"},{"text":"",extra:[{"text":"秒",color:white,italic:false}]}]

# 燃料データ
execute store result entity @s equipment.head.components."minecraft:custom_data".fuel float 0.02 run scoreboard players get @s RD.ai_timer
execute store result entity @s equipment.head.components."minecraft:custom_data".fuel_max float 0.02 run scoreboard players get @s RD.ai_timer_2

data modify entity @s CustomName.text set string entity @s equipment.head.components."minecraft:custom_data".fuel 0 3
data modify entity @s CustomName.extra[2].text set string entity @s equipment.head.components."minecraft:custom_data".fuel_max 0 5

# function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode

tag @s add RD.placed_barrel