# $say $(curRecipe)

# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp.category[0]"}]

# $execute unless data storage rockietools:custom_recipe temp.category[$(curRecipe)] run say recipe doesnt exist!

# temp.category内に該当するレシピ番号のデータがなければnullデータを設置するアイテムのメタデータとして設定
$execute unless data storage rockietools:custom_recipe temp.category[$(curRecipe)] run data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set value "rd_recipe:air"

# temp.category内のデータを参照して配置するデータを設定
$data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set from storage rockietools:custom_recipe temp.category[$(curRecipe)].result.table

# $say $(curRecipe)
# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp_crafter.meta.recipe_data"}]