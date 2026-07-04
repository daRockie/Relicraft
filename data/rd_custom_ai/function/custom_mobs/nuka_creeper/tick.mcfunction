execute on target run tag @s add creeper.target

execute if entity @n[distance=0..4,tag=creeper.target] if entity @s[tag=!RD.nuka_creeper.ignited] run function rd_custom_ai:custom_mobs/nuka_creeper/ignite

tag @n[tag=creeper.target] remove creeper.target

function rd_custom_ai:advanced_ai/creeper/head_offset {"scale":1.85}

execute if entity @s[tag=RD.nuka_creeper.ignited] run function rd_custom_ai:custom_mobs/nuka_creeper/boom