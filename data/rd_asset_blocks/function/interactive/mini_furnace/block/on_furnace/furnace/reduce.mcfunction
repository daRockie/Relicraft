execute if block ~ ~-1 ~ furnace[lit=false] run return fail

# scoreboard players set $.cooking_time RD.block.calculator 0

execute store result score $.cooking_time RD.block.calculator run data get block ~ ~-1 ~ cooking_time_spent 1

scoreboard players add $.cooking_time RD.block.calculator 2

# tellraw @a [{"score":{name:"$.cooking_time","objective":"RD.block.calculator"}}]

execute store result block ~ ~-1 ~ cooking_time_spent int 1 run scoreboard players get $.cooking_time RD.block.calculator

# scoreboard players reset $.cooking_time RD.ai_timer

# tellraw @a [{"block":"~ ~-1 ~",nbt:"cooking_time_spent"}]
