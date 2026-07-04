playsound block.dispenser.launch hostile @a ~ ~ ~ 2 1
playsound item.flintandsteel.use hostile @a ~ ~ ~ 1 0.5
particle lava ~ ~2 ~ 0.5 0.5 0.5 0.05 15

data modify entity @s NoAI set value 1b
data modify entity @s ignited set value 1b
tag @s add RD.nuka_creeper.ignited

summon text_display ~ ~3 ~ {text:{"text":"10",color:"red"},Tags:["RD.nuka_creeper.countdown","RD.object"],billboard:"center"}

effect give @s resistance 10 0