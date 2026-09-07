tag @s add RD.instant_detect.parent

execute on target on attacker run tag @s add RD.instant_detect.child

execute unless entity @s[tag=RD.instant_detect.parent,tag=RD.instant_detect.child] run return run function rd_custom_ai:movements/venomous/tag_remove

playsound entity.zombie.infect hostile @a ~ ~ ~ 0.5 1
playsound entity.player.levelup hostile @a ~ ~ ~ 1 2

particle heart ~ ~ ~ 0.5 0.5 0.5 0.25 10

effect give @s instant_health 1 0