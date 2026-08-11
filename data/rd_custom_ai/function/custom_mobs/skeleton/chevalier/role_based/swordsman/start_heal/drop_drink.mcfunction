summon item ~ ~ ~ {Age:4900,Item:{id:"glass_bottle"},Tags:["RD.chevalier.litter"],PickupDelay:32767}
item replace entity @s weapon.mainhand from entity @s armor.body

effect give @s instant_damage 1 1

execute as @n[type=villager,tag=RD.runaway_entity,distance=..10] run function rd_asset_mobs:summon/vanish

scoreboard players reset @s RD.ai_timer

tag @s remove RD.chevalier.swordsman.drinking
tag @s add RD.chevalier.swordsman.already_used_potion