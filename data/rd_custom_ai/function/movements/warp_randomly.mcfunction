$spreadplayers ~ ~ $(spreadDistance) $(maxRange) under $(Pos) false @s
execute if score @s RD.mana matches 40.. run scoreboard players remove @s RD.mana 40
execute unless score @s RD.mana matches 40.. run scoreboard players set @s RD.mana 0