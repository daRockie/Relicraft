playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 2

playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1 1

playsound entity.player.levelup player @a ~ ~ ~ 1 2

particle heart ~ ~2 ~ 0.5 0.5 0.5 0.05 15

particle happy_villager ~ ~2 ~ 0.5 0.5 0.5 0.25 15

particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 15

# ヘルス、最大体力をストア
execute store result score $CHANGEABLE.RD.internal.health RD.health run data get entity @s Health 100

execute store result score $CHANGEABLE.RD.internal.max_health RD.health run attribute @s max_health get 100

# tellraw @a [{"text":"体力: "},{"score":{"name":"$CHANGEABLE.RD.internal.health","objective":"health"}}]
# tellraw @a [{"text":"最大体力: "},{"score":{"name":"$CHANGEABLE.RD.internal.max_health","objective":"health"}}]


# 計算

scoreboard players operation $CHANGEABLE.RD.internal.max_health RD.health *= #const.10 RD.health

scoreboard players operation $CHANGEABLE.RD.internal.max_health RD.health /= #const.100 RD.health

# tellraw @a [{"text":"最大体力の20%: "},{"score":{"name":"$CHANGEABLE.RD.internal.max_health","objective":"health"}}]

scoreboard players operation $CHANGEABLE.RD.internal.health RD.health += $CHANGEABLE.RD.internal.max_health RD.health

# tellraw @a [{"score":{"name":"$CHANGEABLE.RD.internal.health","objective":"health"}}]

scoreboard players operation @s ScoreToHealth = $CHANGEABLE.RD.internal.health RD.health

# tellraw @a [{"score":{"name":"@s","objective":"ScoreToHealth"}}]

tellraw @s [{"text":"40",color:"aqua"},{"text":" Mana(","color":"aqua"},{"text":"息吹の香炉","color":"gold"},{"text":")","color":"aqua"}]

# effect give @s regeneration 2 2

effect give @s resistance 3 1

effect give @s absorption 2 0


function rd_system:mana/use_mana_macro {"mana":40}