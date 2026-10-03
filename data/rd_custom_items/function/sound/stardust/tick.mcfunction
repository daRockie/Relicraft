# say a

execute if score @s RD.SND.timer matches 1.. anchored eyes run function rd_custom_items:sound/stardust/shot with entity @s {}

scoreboard players add @s RD.SND.timer 1

execute if score @s RD.SND.timer matches 4.. run tag @s remove SND.stardust
execute if score @s RD.SND.timer matches 4.. run function rd_custom_items:sound/replay

