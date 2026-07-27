# $say apply: $(type)
# $say rng: $(offset_rng)

# 構成したデータを生成する鉱石のリストに書き加える
$data modify entity @s data.ore append value {type:"$(type)", offset:$(offset_rng)}