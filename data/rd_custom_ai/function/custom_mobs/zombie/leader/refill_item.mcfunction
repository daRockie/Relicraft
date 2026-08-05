item modify entity @s armor.head {type:"set_components",components:{item_model:"green_banner"}}

playsound entity.horse.armor hostile @a ~ ~ ~ 1 1

execute if entity @e[type=#undead,distance=0.01..16] run function rd_custom_ai:custom_mobs/zombie/leader/accompany

tag @s remove RD.zombie_flag_thrown

scoreboard players reset @s RD.ai_timer