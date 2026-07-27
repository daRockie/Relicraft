execute if block ~ ~-0.2 ~ #campfires[lit=true] run scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 0..39 run function rd_custom_items:item_entities/ingredient/bag_with_herb/smoke/0
execute if score @s RD.ai_timer matches 40..119 run function rd_custom_items:item_entities/ingredient/bag_with_herb/smoke/1
execute if score @s RD.ai_timer matches 120..280 run function rd_custom_items:item_entities/ingredient/bag_with_herb/smoke/2
execute if score @s RD.ai_timer matches 280.. run function rd_custom_items:item_entities/ingredient/bag_with_herb/cooked with entity @s Item