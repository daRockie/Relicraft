# say used
execute if items entity @s container.* arrow anchored eyes run function rd_custom_items:items/guns/lmg/used with entity @s {}
execute unless items entity @s container.* arrow at @s run function rd_custom_items:items/tankyuu/no_ammo
