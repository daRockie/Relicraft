data modify storage rockietools:item_modifier temp.offhand.tools append from entity @s equipment.offhand.components."minecraft:use_remainder".components."minecraft:custom_data"
data modify storage rockietools:item_modifier temp.mainhand.tools set from entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"
