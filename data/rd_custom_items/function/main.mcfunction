# kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TempItem:1b}}}}]

# execute as @a[tag=RD.combo_user] if score @s RD.damage_dealt matches 1.. run function rd_custom_items:enchantment/reset_damage_dealt

execute as @a[predicate=rd_custom_items:daytime] if dimension overworld run scoreboard players reset @s deathCount

execute as @e[tag=!RD.type.block] at @s if entity @a[distance=..80] as @s run function rd_custom_items:variables/set_value

execute as @e[type=item,predicate=rd_system:mob_condition/item/has_custom_data] at @s if entity @a[distance=..80] as @s run function rd_custom_items:item_entities/tick with entity @s Item.components."minecraft:custom_data"

# Equipment


# execute as @a if items entity @s weapon.* shield[custom_data~{RD.item:"RD.anti_exp_shield"}] at @s if entity @e[tag=explosive_mobs,distance=0..8] run function rd_custom_items:items/item.shield/0/