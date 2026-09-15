clear @a *[custom_data~{TempItem:1b}]

item replace block ~ ~ ~ container.0 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air

item replace block ~ ~ ~ container.8 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

loot replace block ~ ~ ~ container.9 loot rd_recipe:custom_crafter/internal/ui/to_crafting_mode
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.16 with air
item replace block ~ ~ ~ container.17 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.18 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.25 with air
item replace block ~ ~ ~ container.26 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/init

scoreboard players add #_SLOTCOUNTER RD.block.calculator.temp3 0

# data modify block ~ ~ ~ CustomName.text set value "改良型作業台 ➡ レシピブック"
data modify block ~ ~ ~ CustomName.bold set value true

#say Turned into recipe mode
scoreboard players set @s RD.isCrafting 0