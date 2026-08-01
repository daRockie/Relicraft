# say offhand
data modify storage rockietools:item_modifier temp.tools set from storage rockietools:item_modifier temp.offhand.tools
data modify storage rockietools:item_modifier temp.tools.address set value "equipment.offhand"
data modify storage rockietools:item_modifier temp.tools.loot_address set value "offhand"
execute if data entity @s equipment.offhand.components."minecraft:item_model" run data modify storage rockietools:item_modifier temp.tools.id set from entity @s equipment.offhand.components."minecraft:item_model"
execute unless data entity @s equipment.offhand.components."minecraft:item_model" run data modify storage rockietools:item_modifier temp.tools.id set from entity @s equipment.offhand.id