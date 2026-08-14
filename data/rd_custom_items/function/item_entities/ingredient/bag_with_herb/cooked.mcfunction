particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 15
particle campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.025 15
particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0 15

playsound entity.ender_eye.death player @a ~ ~ ~ 1 2
playsound entity.chicken.egg player @a ~ ~ ~ 1 1
playsound block.fire.extinguish player @a ~ ~ ~ 1 1

$loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"loot_table","value":"rd_recipe:ingredient/uncraftables/bag_with_smoldering_herbs"}]}],modifier:[{type:"set_count",count:$(count)}]}

kill @s