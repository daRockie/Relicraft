function rd_custom_items:equipments/armor_tick

execute if score @s deathCount matches 3.. run function rd_custom_items:give_warp_potion

execute if entity @s[scores={RD.respawned=1..}] as @s at @s run function rd_custom_items:on_respawn

execute if entity @s[predicate=rd_system:mob_condition/on_ground] run function rd_custom_items:equipments/util/on_ground/tick

execute if entity @s[predicate=rd_system:mob_condition/player/input/jump] run function rd_custom_items:equipments/util/on_jump
