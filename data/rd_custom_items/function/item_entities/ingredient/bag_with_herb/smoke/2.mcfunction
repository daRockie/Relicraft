execute if entity @s[tag=!RD.item.bag_with_herb.smoke_0] run function rd_custom_items:item_entities/ingredient/bag_with_herb/particle/initialize
execute if entity @s[tag=!RD.item.bag_with_herb.smoke_2] run function rd_custom_items:item_entities/ingredient/bag_with_herb/particle/initialize_2

particle smoke ~ ~ ~ 0 0.05 0 0.05 5
particle flame ~ ~ ~ 0.05 0.05 0.05 0.02 1