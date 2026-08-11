# say init

# イニチアライズ設定を無視するタグを有するモブはここで撥ねる
execute if entity @s[tag=RD.cmd] run return fail
execute if entity @s[tag=RD.no_auto_initialize] run return fail

# プレイヤーならマナ導入を確定で行う
tag @s[type=player] add RD.has_mana
execute unless data storage rockietools:player meta.respawn run function rd_asset_mobs:system/set_first_respawn_point

# マナの初期設定
execute if entity @s[tag=RD.has_mana] run function rd_asset_mobs:system/mana_initialize

# 導入処理を一度確定
tag @s add RD.initialized

# プレイヤーはワールド中心にあるマーカーとリンクする
execute if entity @s[type=player] run return run function rd_asset_mobs:system/link_marker with entity @s {}

# execute store result score @s spawnRandom run random value 0..100

# ランダマイズ
execute if entity @s[predicate=rd_asset_mobs:has_any_tag] run function rd_asset_mobs:randomize