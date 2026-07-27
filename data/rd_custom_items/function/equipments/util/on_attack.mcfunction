advancement revoke @s only rd_custom_items:occasional/attack

execute unless data entity @s SelectedItem.components."minecraft:enchantments"."rd_custom_items:crit" run function rd_custom_items:equipments/util/damage_reset

scoreboard players set @s RD.damage_dealt 0