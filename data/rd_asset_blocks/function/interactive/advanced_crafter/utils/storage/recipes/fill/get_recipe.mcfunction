# $say $(curRecipe)

# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp.category[0]"}]

# $execute unless data storage rockietools:custom_recipe temp.category[$(curRecipe)] run say recipe doesnt exist!

$execute unless data storage rockietools:custom_recipe temp.category[$(curRecipe)] run data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set value "rd_recipe:air"
$data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set from storage rockietools:custom_recipe temp.category[$(curRecipe)].result.table

# $say $(curRecipe)
# tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"temp_crafter.meta.recipe_data"}]