execute if score @s RD.ai_timer matches 21 run data modify entity @n[type=text_display] text.text set value "9"
execute if score @s RD.ai_timer matches 41 run data modify entity @n[type=text_display] text.text set value "8"
execute if score @s RD.ai_timer matches 61 run data modify entity @n[type=text_display] text.text set value "7"
execute if score @s RD.ai_timer matches 81 run data modify entity @n[type=text_display] text.text set value "6"
execute if score @s RD.ai_timer matches 101 run data modify entity @n[type=text_display] text.text set value "5"
execute if score @s RD.ai_timer matches 121 run data modify entity @n[type=text_display] text.text set value "4"
execute if score @s RD.ai_timer matches 141 run data modify entity @n[type=text_display] text.text set value "3"
execute if score @s RD.ai_timer matches 161 run data modify entity @n[type=text_display] text.text set value "2"
execute if score @s RD.ai_timer matches 181 run data modify entity @n[type=text_display] text.text set value "1"
execute if score @s RD.ai_timer matches 181 run data modify entity @n[type=text_display] text.bold set value 1b
execute if score @s RD.ai_timer matches 201 run data modify entity @n[type=text_display] text.text set value "0"
execute if score @s RD.ai_timer matches 218.. run kill @n[type=text_display,tag=RD.nuka_creeper.countdown]
