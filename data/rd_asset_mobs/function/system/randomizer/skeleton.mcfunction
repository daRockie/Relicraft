execute if entity @s[type=skeleton_horse] run return fail
execute if entity @s[type=wither_skeleton] run return run function rd_asset_mobs:system/randomizer/wither_skeleton
execute if predicate rd_custom_ai:percent/20 if dimension overworld run function rd_asset_mobs:system/randomizer/wizard
execute if predicate rd_custom_ai:percent/20 run function rd_asset_mobs:summon/skeleton/normal/chevalier
