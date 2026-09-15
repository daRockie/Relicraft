data remove storage rockietools:custom_recipe temp.category

data modify storage rockietools:custom_recipe temp.category set value []

execute if data storage rockietools:custom_recipe temp.input.no_keys run return run data modify storage rockietools:custom_recipe temp.category append from storage rockietools:custom_recipe list.crafter[]


# tellraw @a [{"nbt":"temp.category",storage:"rockietools:custom_recipe"}]

# $say data modify storage rockietools:custom_recipe temp.category set from storage rockietools:custom_recipe list.crafter[{result:{sort:[$(keys)]}}]

$data modify storage rockietools:custom_recipe temp.category append from storage rockietools:custom_recipe list.crafter[{result:{sort:[$(keys)]}}]

# tellraw @a [{"nbt":"temp.category",storage:"rockietools:custom_recipe"}]

# data remove storage rockietools:custom_recipe temp.category[{result:{sort:[{key:"armor"}]}}]