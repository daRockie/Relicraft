execute if entity @s[predicate=rd_asset_mobs:in_hostile] as @s run function rd_custom_ai:advanced_ai/skeleton/moveset
execute if entity @s[tag=RD.enemy.wizard.0] run function rd_custom_ai:custom_mobs/wizard/amature/main

execute if entity @s[tag=RD.chevalier] run function rd_custom_ai:custom_mobs/skeleton/chevalier/tick

# 