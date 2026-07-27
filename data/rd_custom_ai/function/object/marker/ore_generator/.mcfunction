# 鉱石の生成回数を振る
execute if entity @s[tag=!RD.initialized] store result score @s RD.ai_timer run random value 1..6

# say rolling...

# initialize
tag @s add RD.initialized

# 座標データの書き込み
data modify entity @s data.x set from entity @s Pos[0]
data modify entity @s data.y set from entity @s Pos[1]
data modify entity @s data.z set from entity @s Pos[2]

# data modify entity @s data.ore set value []

# データの書き込み
execute if predicate rd_custom_ai:percent/20 run function rd_custom_ai:object/marker/ore_generator/create_data {"type":"ruby","min_offset":-48,"max_offset":16}
execute if predicate rd_custom_ai:percent/20 run function rd_custom_ai:object/marker/ore_generator/create_data {"type":"peridot","min_offset":-20,"max_offset":40}

# 生成地点の設定
execute store result entity @s data.rng_x int 1 run random value 0..15
execute store result entity @s data.rng_y int 1 run random value 0..15
execute store result entity @s data.rng_z int 1 run random value 0..15

# 生成カウントを進める
scoreboard players remove @s RD.ai_timer 1

# カウントがゼロでなければ再帰
execute if score @s RD.ai_timer matches 1.. run return run function rd_custom_ai:object/marker/ore_generator/

# execute unless data entity @s data.ore[] run tellraw @a [{"entity":"@s","nbt":"data"}]
# execute unless data entity @s data.ore[] run return run say i dont have any data

# データがなければキル
execute unless data entity @s data.ore[] run return run kill @s

# 鉱石データを保持しているなら生成を実行
execute if data entity @s data.ore[] run function rd_custom_ai:object/marker/ore_generator/generate/ with entity @s data
# execute if data entity @s data.ore[] run tellraw @a [{"entity":"@s","nbt":"data","bold":1b}]
