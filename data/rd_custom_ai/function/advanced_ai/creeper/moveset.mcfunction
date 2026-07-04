execute on target run tag @s add creeper.target

execute if entity @s[tag=RD.void_bellwether] run function rd_custom_ai:custom_mobs/void/bellwether/hostile
execute if entity @s[tag=RD.nuka_creeper] run function rd_custom_ai:custom_mobs/nuka_creeper/tick

tag @n[tag=creeper.target] remove creeper.target