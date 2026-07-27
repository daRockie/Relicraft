
scoreboard players add @s RD.ai_timer_2 1

# 生成を実行する防具立てをスポーン
$function rd_asset_blocks:ore_generate {"x":$(x),"y":$(y),"z":$(z),"type":$(type)}

# $say $(type) generated! coords: $(x) $(y) $(z)

# 座標のランダム値を再設定
execute store result entity @s data.rng_x int 1 run random value 0..15
execute store result entity @s data.rng_y int 1 run random value 0..15
execute store result entity @s data.rng_z int 1 run random value 0..15

# 最後の鉱石データを削除
data remove entity @s data.ore[-1]

# データがなければキル
execute unless data entity @s data.ore[] run return run function rd_custom_ai:object/marker/ore_generator/generate/result

# あれば生成を再開
function rd_custom_ai:object/marker/ore_generator/generate/ with entity @s data