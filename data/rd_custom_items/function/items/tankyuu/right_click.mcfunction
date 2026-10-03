# say used
execute if items entity @s container.* arrow anchored eyes run function rd_custom_items:items/tankyuu/used with entity @s {}
execute unless items entity @s container.* arrow at @s run function rd_custom_items:items/tankyuu/no_ammo
scoreboard players set @s RD.item.RC 2
advancement revoke @s only rd_custom_items:item_used/weapons/tankyuu