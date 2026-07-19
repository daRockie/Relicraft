#> rd_asset_blocks:0
# 
# データの振り分け
# 
# @internal

execute if entity @s[tag=RD.block.interactive] run function rd_asset_blocks:interactive/
execute if entity @s[tag=RD.block.passive] run function rd_asset_blocks:passive/
function rd_asset_blocks:sys/effect/tick