particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 5 0.5

function rd_custom_ai:custom_mobs/nuka_creeper/text_display

execute if score @s RD.ai_timer matches 60.. at @s run function rd_custom_ai:custom_mobs/nuka_creeper/summon_minion

