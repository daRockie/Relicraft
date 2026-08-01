data modify storage rockietools:item_modifier temp.tools set from entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"
data modify storage rockietools:item_modifier temp.tools.address set value "SelectedItem"
data modify storage rockietools:item_modifier temp.tools.loot_address set value "mainhand"
execute if data entity @s SelectedItem.components."minecraft:enchantments" run data modify storage rockietools:item_modifier temp.enchantments set from entity @s SelectedItem.components."minecraft:enchantments"

function rd_system:items/weapon/set_address/set_data