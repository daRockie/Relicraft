scoreboard players reset @s RD.block.calculator

# say generating ores...

# Xを記録
$scoreboard players set @s RD.block.calculator $(x)
$scoreboard players add @s RD.block.calculator $(rng_x)

# 出力用データに書き込み
execute store result entity @s data.final.x int 1 run scoreboard players get @s RD.block.calculator

# Zを記録
$scoreboard players set @s RD.block.calculator $(z)
$scoreboard players add @s RD.block.calculator $(rng_z)

# 出力用データに書き込み
execute store result entity @s data.final.z int 1 run scoreboard players get @s RD.block.calculator

# タイプと生成先のY座標を取得
data modify entity @s data.final.y set from entity @s data.ore[-1].offset
data modify entity @s data.final.type set from entity @s data.ore[-1].type

# 生成
function rd_custom_ai:object/marker/ore_generator/generate/place with entity @s data.final