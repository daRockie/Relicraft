#say hi
scoreboard players operation @s RD.player.ID = #ID RD.player.ID
team join RD.player @s

function rd_system:mana/register with entity @s {}

tag @s add RD.mana.init
scoreboard players add #ID RD.player.ID 1