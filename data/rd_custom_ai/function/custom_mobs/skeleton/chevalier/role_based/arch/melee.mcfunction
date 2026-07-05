item replace entity @s armor.body from entity @s weapon.mainhand rd_recipe:set_equippable
item replace entity @s weapon.mainhand with wooden_sword[attribute_modifiers=[{id:"kb",type:"attack_knockback",amount:2.5,operation:"add_value"}],custom_data={"RD.hasAlready":true}] 1

# tellraw @a {"entity":"@s",nbt:"equipment.body"}

tag @s add RD.chevalier.arch.melee