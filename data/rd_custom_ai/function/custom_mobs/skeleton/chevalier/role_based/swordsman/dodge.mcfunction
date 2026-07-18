execute if predicate rd_custom_ai:percent/40 rotated ~45 ~ positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward
execute if predicate rd_custom_ai:percent/40 rotated ~-45 ~ positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward

execute if predicate rd_custom_ai:percent/40 rotated ~135 ~ positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward
execute if predicate rd_custom_ai:percent/40 rotated ~-135 ~ positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward


execute positioned ^ ^ ^3 run function rd_custom_ai:custom_mobs/skeleton/chevalier/jump_forward

execute if predicate rd_custom_ai:percent/20 run return run scoreboard players add @s RD.ai_timer 120
scoreboard players reset @s RD.ai_timer