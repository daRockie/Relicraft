# execute store result score @s spawnRandom run random value 0..100

execute if predicate rd_custom_ai:percent/20 run return run function rd_asset_mobs:summon/creeper/scout_creeper
execute if predicate rd_custom_ai:percent/5 run return run function rd_asset_mobs:summon/creeper/nuke_creeper
execute if predicate rd_custom_ai:percent/20 if predicate rd_custom_items:can_see_sky run return run function rd_asset_mobs:summon/creeper/parachute_creeper
