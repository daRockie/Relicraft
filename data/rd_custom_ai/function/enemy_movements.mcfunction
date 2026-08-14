# 虫けらども
execute if entity @s[type=#arthropod] run function rd_custom_ai:advanced_ai/spider/tick

# ゾンビ
execute if entity @s[type=#zombies] run function rd_custom_ai:advanced_ai/zombie/tick

# 骨類
execute if entity @s[type=#skeletons] run function rd_custom_ai:advanced_ai/skeleton/tick

# クリパ
execute if entity @s[type=creeper] run function rd_custom_ai:advanced_ai/creeper/tick

# 円だマン
execute if entity @s[type=enderman] run function rd_custom_ai:advanced_ai/enderman/tick

# ウィッチ
execute if entity @s[type=witch] run function rd_custom_ai:advanced_ai/witch/tick

execute if entity @s[tag=RD.with_mannequin,type=piglin_brute] run function rd_custom_ai:w_mannequin/tick
