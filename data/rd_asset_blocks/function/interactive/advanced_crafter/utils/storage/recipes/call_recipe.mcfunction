data remove storage rockietools:custom_recipe temp.category

data modify storage rockietools:custom_recipe temp.category set value []

# tellraw @a [{"nbt":"temp.category",storage:"rockietools:custom_recipe"}]

# $say data modify storage rockietools:custom_recipe temp.category set from storage rockietools:custom_recipe list.crafter[{result:{sort:[$(keys)]}}]

$data modify storage rockietools:custom_recipe temp.category append from storage rockietools:custom_recipe list.crafter[{result:{sort:[$(keys)]}}]

# tellraw @a [{"nbt":"temp.category",storage:"rockietools:custom_recipe"}]

# data remove storage rockietools:custom_recipe temp.category[{result:{sort:[{key:"armor"}]}}]