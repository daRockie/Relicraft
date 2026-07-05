item replace entity @s weapon.mainhand from entity @s armor.body
playsound item.armor.equip_generic hostile @a ~ ~ ~ 2 1
data modify entity @s Silent set value 1b

particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.05 20
# playsound minecraft:entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1


tag @s remove RD.chevalier.tank.melee