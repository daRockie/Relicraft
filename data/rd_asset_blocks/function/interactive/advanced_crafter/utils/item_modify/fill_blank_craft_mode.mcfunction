# say crafting


# offset
item replace block ~ ~ ~ container.0 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.1 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.2 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.6 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.7 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.8 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.9 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.10 with knowledge_book[enchantment_glint_override=1b,custom_name={"text":"レシピを確認する","italic":0b},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.11 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.15 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.16 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.17 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.18 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.19 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.20 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.24 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.25 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.26 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

# clear recipe mode
execute unless items block ~ ~ ~ container.3 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.3 with air
execute unless items block ~ ~ ~ container.4 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.4 with air
execute unless items block ~ ~ ~ container.5 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.5 with air
execute unless items block ~ ~ ~ container.12 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.12 with air
execute unless items block ~ ~ ~ container.13 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.13 with air
execute unless items block ~ ~ ~ container.14 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.14 with air
execute unless items block ~ ~ ~ container.21 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.21 with air
execute unless items block ~ ~ ~ container.22 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.22 with air
execute unless items block ~ ~ ~ container.23 *[!custom_data~{TempItem:1b}] run item replace block ~ ~ ~ container.23 with air

execute if score @s RD.isCrafting matches 0 run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/black_panes

#say Turned into craft mode

# data modify block ~ ~ ~ CustomName.text set value "改良型作業台 ➡ クラフト"
data modify block ~ ~ ~ CustomName.bold set value true

# item replace block ~ ~ ~ container.25 with

execute if entity @s[tag=RD.block.interactive.advanced_crafter.crafting_mode] run loot replace block ~ ~ ~ container.25 loot rd_asset_blocks:block/static/advanced_crafter/x

# item modify block ~ ~ ~ container.25 rd_asset_blocks:insert

item modify block ~ ~ ~ container.* rd_asset_blocks:set_tempitem

function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/init

scoreboard players set @s RD.isCrafting 1
