tag @s add RD.itemUser
#say A
clear @s arrow 1
#summon armor_stand ^ ^1.75 ^ {Tags:["RD.tankyuu"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
#playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2
#data modify entity @s
#execute as @e[type=armor_stand,tag=!RD.initialized,tag=RD.tankyuu] at @s run function rd_custom_items:items/tankyuu/dmg_init

particle explosion ^ ^ ^0.3 0 0 0 1 1 normal @a[distance=1..]
particle smoke ^ ^ ^1 0.05 0.05 0.05 0.05 4
# particle lava ^ ^ ^1 0.5 0.5 0.5 0.05 5

# say stardust


# tag @s add SND.stardust
# tag @s add RD.play_sound_function

# the fuck
$summon armor_stand ^ ^ ^0.5 {Tags:["RD.bullet","RD.randomAngle"],Small:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,equipment:{head:{id:"command_block",components:{"item_model":"air","custom_data":{"data":{"owner":"$(UUID)","damage":7,"speed":1.6,"threshold":3}}}}}}
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 1
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1
# playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.5

# playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0.5

execute if entity @s[predicate=rd_system:sneaking] run scoreboard players set $strength player_motion.api.launch 200

execute unless entity @s[predicate=rd_system:sneaking] run scoreboard players set $strength player_motion.api.launch 800

execute unless entity @s[x_rotation=85..90] rotated ~180 0 run function player_motion:api/launch_looking


data modify entity @n[tag=RD.bullet,tag=!RD.initialized,type=armor_stand] equipment.head.components."minecraft:custom_data".data.owner set from entity @s {}.UUID

execute as @e[type=armor_stand,tag=RD.bullet,distance=..3,tag=!RD.initialized] at @s run function rd_custom_items:items/shortbow/player_init

tp @s ~ ~ ~ ~ ~-1

