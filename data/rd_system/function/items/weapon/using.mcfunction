# say using

scoreboard players set $CHANGEABLE.max_damage RD.item.durabity 0
scoreboard players set $CHANGEABLE.damage RD.item.durabity 0
scoreboard players set $CHANGEABLE.damage_per_use RD.item.durabity 0
scoreboard players set $CHANGEABLE.max_damage_tmp RD.item.durabity 0
scoreboard players set $CHANGEABLE.mana_reduce RD.item.durabity 0
scoreboard players set $CHANGEABLE.mana_use RD.item.durabity 0

# particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.05 1
# playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2

# アドレス
data modify storage rockietools:item_modifier temp.tools set value {address:""}

execute if items entity @s weapon.mainhand *[custom_data~{weapon:1b}] run function rd_system:items/weapon/set_address/mainhand

execute unless items entity @s weapon.mainhand *[custom_data~{weapon:1b}] run function rd_system:items/weapon/set_address/offhand

function rd_system:items/weapon/store_damage with storage rockietools:item_modifier temp.tools

advancement revoke @s only rd_system:using_item