tag @s add RD.itemUser
#say A
clear @s arrow 1
#summon armor_stand ^ ^1.75 ^ {Tags:["RD.tankyuu"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
#playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2
#data modify entity @s
#execute as @e[type=armor_stand,tag=!RD.initialized,tag=RD.tankyuu] at @s run function rd_custom_items:items/tankyuu/dmg_init

# say stardust


# tag @s add SND.stardust
# tag @s add RD.play_sound_function

# the fuck
$summon armor_stand ^ ^ ^ {Tags:["RD.shortbow","RD.randomAngle"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,equipment:{head:{id:"command_block",components:{"item_model":"air","custom_data":{"data":{"owner":"$(UUID)","damage":4,"speed":1.2,"threshold":4}}}}}}
$summon armor_stand ^ ^ ^ {Tags:["RD.shortbow","RD.randomAngle"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,equipment:{head:{id:"command_block",components:{"item_model":"air","custom_data":{"data":{"owner":"$(UUID)","damage":4,"speed":1.2,"threshold":4}}}}}}
$summon armor_stand ^ ^ ^ {Tags:["RD.shortbow","RD.randomAngle"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,equipment:{head:{id:"command_block",components:{"item_model":"air","custom_data":{"data":{"owner":"$(UUID)","damage":4,"speed":1.2,"threshold":4}}}}}}

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1 2

# playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0.5

data modify entity @n[tag=RD.shortbow,tag=!RD.initialized,type=armor_stand] equipment.head.components."minecraft:custom_data".data.owner set from entity @s {}.UUID

execute as @e[type=armor_stand,tag=RD.shortbow,distance=..3,tag=!RD.initialized] at @s run function rd_custom_items:items/shortbow/player_init