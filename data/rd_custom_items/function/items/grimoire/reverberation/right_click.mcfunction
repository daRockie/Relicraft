execute if score @s RD.item.RC matches 0 unless score @s RD.mana matches 80.. run function rd_custom_items:items/not_enough_mana
execute if score @s RD.item.RC matches 0 unless score @s abilityCooldown.reverberation matches 0 if score @s RD.mana matches 80.. run function rd_custom_items:items/on_cooldown
scoreboard players set @s RD.item.RC 2
advancement revoke @s only rd_custom_items:item_used/weapons/reverberation
execute if score @s RD.item.RC matches 2 if score @s abilityCooldown.reverberation matches 0 if score @s RD.mana matches 80.. run function rd_custom_items:items/grimoire/reverberation/used
