execute if score @s RD.item.RC matches 0 if items entity @s container.* arrow at @s run function rd_custom_items:items/shortbow/used with entity @s {}
execute if score @s RD.item.RC matches 0 unless items entity @s container.* arrow at @s run function rd_custom_items:items/shortbow/no_ammo
scoreboard players set @s RD.item.RC 2
advancement revoke @s only rd_custom_items:item_used/weapons/shortbow