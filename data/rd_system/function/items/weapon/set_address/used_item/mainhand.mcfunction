# say mainhand
data modify storage rockietools:item_modifier temp.tools set from storage rockietools:item_modifier temp.mainhand.tools
data modify storage rockietools:item_modifier temp.tools.address set value "SelectedItem"
data modify storage rockietools:item_modifier temp.tools.loot_address set value "mainhand"
execute if data entity @s SelectedItem.components."minecraft:item_model" run data modify storage rockietools:item_modifier temp.tools.id set from entity @s SelectedItem.components."minecraft:item_model"
execute unless data entity @s SelectedItem.components."minecraft:item_model" run data modify storage rockietools:item_modifier temp.tools.id set from entity @s SelectedItem.id

summon item ~ ~ ~ {Item:{id:"barrier",components:{"item_model":"air"}},Tags:["RD.model_checker"],PickupDelay:25565}
data modify entity @n[type=item,tag=RD.model_checker] Item.id set from storage rockietools:item_modifier temp.tools.id

# execute if entity @n[type=item,tag=RD.model_checker] run say model exists
execute unless entity @n[type=item,tag=RD.model_checker] run data modify storage rockietools:item_modifier temp.tools.id set from entity @s SelectedItem.id

kill @n[type=item,tag=RD.model_checker]