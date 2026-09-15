execute as @a[distance=..10] if items entity @s player.cursor *[custom_data~{TempItem:1b} | !custom_data~{Ingredient:1b}] as @s run tag @s add RD.has_recipe

execute if entity @a[tag=RD.has_recipe,distance=..10] run item replace entity @s weapon.mainhand from entity @p[tag=RD.has_recipe] player.cursor

execute if items entity @s weapon.mainhand *[custom_data~{"RD.item":"RD.internal.category"}] run return run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/show_category

function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode

scoreboard players set @s RD.isCrafting 2

clear @a *[custom_data~{TempItem:1b}]

item replace block ~ ~ ~ container.10 with writable_book[enchantment_glint_override=1b,custom_name={"text":"クリックで直前の画面に戻る","italic":0b},lore=[{"text":"他のマスをクリックすると",color:"gray",italic:false},{"text":"最初のカテゴリ選択に戻ることができます",color:"gray",italic:false}],custom_data={TempItem:1b,RD.item:"RD.internal.return_to_recipe_screen"}]

function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/set_recipe

tag @a[tag=RD.has_recipe] remove RD.has_recipe