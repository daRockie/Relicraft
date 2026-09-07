$function rd_recipe:force_return_item {table:"$(recipe_data)", place:"container.16", args:"block ~ ~ ~"}
item modify block ~ ~ ~ container.16 rd_recipe:set_recipe_result

execute store result storage rockietools:custom_recipe temp.craft_amount int 1 run scoreboard players get craft_amount RD.temp0

data modify block ~ ~ ~ Items[{Slot:16b}].count set from storage rockietools:custom_recipe temp.craft_amount