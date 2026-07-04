# ターゲット
execute on target run tag @s add spider.target

execute if entity @s[tag=RD.venomous] run function rd_custom_ai:custom_mobs/venomous
execute if entity @s[tag=RD.bloodmother] run function rd_custom_ai:custom_mobs/bloodmother
execute if entity @s[tag=mini_spider] run function rd_custom_ai:custom_mobs/mini_spider

# タゲ外し
tag @n[tag=spider.target] remove spider.target