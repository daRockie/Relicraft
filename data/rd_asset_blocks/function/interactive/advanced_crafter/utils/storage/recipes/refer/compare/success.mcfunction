# $execute unless items block ~ ~ ~ container.$(slot) * run scoreboard players add @s RD.custom_block.CALC_0 1

scoreboard players set $RD.BLOCK.CUSTOM_CRAFTER.count RD.block.calculator 0
scoreboard players set $RD.BLOCK.CUSTOM_CRAFTER.cost RD.block.calculator 0

$execute if items block ~ ~ ~ container.$(slot) * store result score $RD.BLOCK.CUSTOM_CRAFTER.count RD.block.calculator run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count
$execute if items block ~ ~ ~ container.$(slot) * run scoreboard players set $RD.BLOCK.CUSTOM_CRAFTER.cost RD.block.calculator $(count)


$execute if items block ~ ~ ~ container.$(slot) * if score $RD.BLOCK.CUSTOM_CRAFTER.count RD.block.calculator < $RD.BLOCK.CUSTOM_CRAFTER.cost RD.block.calculator run return fail
# $execute if items block ~ ~ ~ container.$(slot) * if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return fail

scoreboard players add @s RD.custom_block.CALC_0 1

#tellraw @a [{"text":"✔",bold:true,color:green}]
#$tellraw @a ["スロット $(slot):",{"text":"個数"},{"score":{"name":"$RD.BLOCK.CUSTOM_CRAFTER.count","objective":"RD.block.calculator"}},", コスト: ",{"score":{"name":"$RD.BLOCK.CUSTOM_CRAFTER.cost","objective":"RD.block.calculator"}}]

# tellraw @a [{"text":"RECIPE SUCESS: ",extra:[{"score":{name:"@s",objective:"RD.custom_block.CALC_0"}}]}]
execute if score @s RD.custom_block.CALC_0 matches 9.. run return run scoreboard players set @s RD._BOOLEAN 1
