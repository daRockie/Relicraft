

execute if entity @s[tag=!RD.projectile.shoot_by_enemy] as @e[distance=0.01..4,tag=!RD.fiery_wand,type=!#unliving_objects] run data modify entity @s Fire set value 100
execute if entity @s[tag=RD.projectile.shoot_by_enemy,tag=!RD.projectile.shoot_by_enemy.aggro] as @e[distance=0.01..4,tag=!RD.fiery_wand,type=!#unliving_objects,type=!#rd_custom_ai:hostile] run data modify entity @s Fire set value 100
