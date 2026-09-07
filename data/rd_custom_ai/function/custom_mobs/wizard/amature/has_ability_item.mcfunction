# say a

# data modify storage rockietools:item_modifier weapon_data set from entity @s equipment.mainhand.components


tag @s add RD.enemy.wizard_has_ability_item

# data modify entity @s equipment.mainhand.components set from storage rockietools:item_modifier weapon_data

execute unless data entity @s SelectedItem.components."minecraft:enchantment_glint_override" run item modify entity @s weapon.mainhand {type:"set_components",components:{"enchantment_glint_override":0b}}
item modify entity @s weapon.mainhand rd_custom_ai:set_data

item modify entity @s weapon.mainhand rd_custom_items:set_projectile_spawn
