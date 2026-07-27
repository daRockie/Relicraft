# 仮領域に鉱石のデータを書き込み
$execute store result entity @s data.temp.offset_rng int 1 run random value $(min_offset)..$(max_offset)
$data modify entity @s data.temp.type set value "$(type)"

# 仮領域を基にデータを書き込み
function rd_custom_ai:object/marker/ore_generator/apply_ore with entity @s data.temp