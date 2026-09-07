execute store result score $CHANGEABLE.RD.internal.health RD.health run data get entity @s Health 100

execute store result score $CHANGEABLE.RD.internal.max_health RD.health run attribute @s max_health get 100

$scoreboard players set $CHANGEABLE.RD.internal.heal_amount RD.health $(heal)

scoreboard players operation $CHANGEABLE.RD.internal.heal_amount RD.health *= #const.100 RD.health

scoreboard players operation $CHANGEABLE.RD.internal.health RD.health += $CHANGEABLE.RD.internal.heal_amount RD.health

execute if score $CHANGEABLE.RD.internal.max_health RD.health < $CHANGEABLE.RD.internal.health RD.health run scoreboard players operation $CHANGEABLE.RD.internal.health RD.health = $CHANGEABLE.RD.internal.max_health RD.health

# tellraw @a [{"score":{"name":"$CHANGEABLE.RD.internal.health","objective":"RD.health"}}]

# tellraw @a [{"score":{"name":"$CHANGEABLE.RD.internal.health","objective":"health"}}]

scoreboard players operation @s ScoreToHealth = $CHANGEABLE.RD.internal.health RD.health

execute if entity @s[type=!player] run function score_to_health:player_tick