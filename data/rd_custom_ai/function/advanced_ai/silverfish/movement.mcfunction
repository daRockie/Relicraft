# ターゲット
execute on target run tag @s add silverfish.target

execute if entity @s[tag=RD.tempest] run function rd_custom_ai:custom_mobs/tempest/movement


# タゲ外し
tag @n[tag=silverfish.target] remove spider.target