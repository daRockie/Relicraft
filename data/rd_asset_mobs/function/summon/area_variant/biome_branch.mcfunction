execute unless predicate rd_asset_mobs:location/in_cave if predicate rd_custom_items:can_see_sky if biome ~ ~ ~ forest run function rd_asset_mobs:summon/area_variant/biome/forest/main
execute unless predicate rd_asset_mobs:location/in_cave if predicate rd_custom_items:can_see_sky if biome ~ ~ ~ plains run function rd_asset_mobs:summon/area_variant/biome/plains/main
execute if predicate rd_asset_mobs:location/in_cave unless predicate rd_custom_items:can_see_sky run function rd_asset_mobs:summon/area_variant/cave/main
