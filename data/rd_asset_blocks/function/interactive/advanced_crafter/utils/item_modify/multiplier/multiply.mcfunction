execute as @a[distance=..10,sort=nearest] if items entity @s player.cursor *[custom_data~{RD.item:"RD.item_counter"}] run tag @s add RD.instant_detect

item replace entity @s weapon.mainhand from entity @a[sort=nearest,tag=RD.instant_detect] player.cursor

playsound minecraft:ui.button.click master @a ~ ~ ~ 1 2

execute store result score craft_amount RD.temp0 run data get entity @s equipment.mainhand.count 1

scoreboard players set $STATIC.const_2 RD.temp0 2

scoreboard players operation craft_amount RD.temp0 *= $STATIC.const_2 RD.temp0

execute if score craft_amount RD.temp0 matches 65.. run scoreboard players set craft_amount RD.temp0 1

execute store result storage rockietools:custom_recipe temp.craft_amount int 1 run scoreboard players get craft_amount RD.temp0

loot replace block ~ ~ ~ container.25 loot rd_asset_blocks:block/static/advanced_crafter/x

item modify block ~ ~ ~ container.25 rd_asset_blocks:insert
item modify block ~ ~ ~ container.25 rd_asset_blocks:set_tempitem

tag @a[tag=RD.instant_detect] remove RD.instant_detect