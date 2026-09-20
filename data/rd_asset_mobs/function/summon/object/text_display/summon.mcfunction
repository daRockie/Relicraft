# say summoned

$summon text_display ~ ~ ~ {text:$(text),text_opacity:255,billboard:"center",Tags:["RD.object","RD.object.text_display"]}
$scoreboard players set @n[type=text_display,tag=RD.object.text_display,tag=!RD.initialized] RD.ai_timer $(timer)