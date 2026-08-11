execute on target run tag @s add skeleton.target

execute if score @s[tag=!RD.runaway_inited] RD.health matches 0..8 run function rd_custom_ai:movements/runaway/init {"speed":0.53}

tag @s remove skeleton.target