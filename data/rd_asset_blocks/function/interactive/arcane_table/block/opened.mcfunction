function custom_items:custom_block/stop_sound

playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1
playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 0.5 1
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 0.5 1

tag @s add opening