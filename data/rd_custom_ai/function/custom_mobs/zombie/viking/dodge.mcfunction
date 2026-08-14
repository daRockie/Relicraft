execute if predicate rd_custom_ai:percent/40 rotated ~45 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump
execute if entity @n[tag=zombies.target,distance=..3] if predicate rd_custom_ai:percent/40 rotated ~-45 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump

execute if predicate rd_custom_ai:percent/40 rotated ~90 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump
execute if entity @n[tag=zombies.target,distance=..3] if predicate rd_custom_ai:percent/40 rotated ~-90 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump

execute if predicate rd_custom_ai:percent/40 rotated ~135 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump

execute if entity @n[tag=zombies.target,distance=..3] if predicate rd_custom_ai:percent/40 rotated ~-135 -35 positioned ^ ^ ^3 run return run function rd_custom_ai:custom_mobs/zombie/viking/jump

execute rotated ~ -35 positioned ^ ^ ^3 run function rd_custom_ai:custom_mobs/zombie/viking/jump

execute if predicate rd_custom_ai:percent/20 run return run scoreboard players add @s RD.ai_timer 120
scoreboard players reset @s RD.ai_timer