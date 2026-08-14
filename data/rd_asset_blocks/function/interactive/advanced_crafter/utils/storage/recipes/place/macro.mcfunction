# say at least ill say hi

# $say $(table) $(slot)

$function rd_recipe:force_return_item {table:"$(table)", place:"container.$(slot)", args:"block ~ ~ ~"}

$item modify block ~ ~ ~ container.$(slot) rd_asset_blocks:set_tempitem

$item modify block ~ ~ ~ container.$(slot) rd_asset_blocks:set_ingredient

$item modify block ~ ~ ~ container.$(slot) {type:"set_count",count:{type:"storage",path:"temp_crafter.current_ingredient.count",storage:"rockietools:custom_recipe"}}