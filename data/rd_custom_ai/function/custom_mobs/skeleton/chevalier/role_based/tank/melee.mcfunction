item replace entity @s armor.body from entity @s weapon.mainhand rd_recipe:set_equippable
item replace entity @s weapon.mainhand with iron_sword[item_model=shield,weapon={disable_blocking_for_seconds:1},attribute_modifiers=[{id:"kb",type:"attack_knockback",amount:1.5,operation:"add_value"},{id:"base_attack_damage",amount:3,operation:"add_value",type:"attack_damage"}],custom_data={"RD.hasAlready":true}] 1
data modify entity @s Silent set value 0b

particle angry_villager ~ ~2 ~

playsound minecraft:block.chain.place hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.experience_orb.pickup hostile @a ~ ~ ~ 0.5 1

# tellraw @a {"entity":"@s",nbt:"equipment.body"}

tag @s add RD.chevalier.tank.melee