execute as @n[tag=RD.objectFollower,type=mannequin,distance=..3,tag=RD.pirate] at @n[tag=RD.objectListener,type=!#minecraft:unliving_objects] run tp @s ~ ~ ~ ~15 ~
# execute on vehicle if entity @s[type=!mannequin] on controller run return run data modify entity @n[type=mannequin] pose set value "standing"
# say a
execute if entity @s[predicate=rd_asset_mobs:in_hostile] run function rd_custom_ai:w_mannequin/hostile
