# say けいさｎ
$execute store result score @s RD.item.durabity run random value 1..$(unbreaking)

execute unless score @s RD.item.durabity matches 0..1 run return fail
scoreboard players operation $CHANGEABLE.max_damage RD.item.durabity -= $CHANGEABLE.damage_per_use RD.item.durabity
