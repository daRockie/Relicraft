#playsound entity.item.break block @a ~ ~ ~ 2 1
# playsound entity.chicken.egg block @a ~ ~ ~ 1 1
#particle explosion ~ ~ ~
# particle cloud ~ ~ ~ 0.05 0.05 0.05 0.025 5
setblock ~ ~ ~ air destroy
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{bold:1b}},id:"minecraft:barrel"}}]
kill @e[type=item,distance=0..1.5,nbt={Item:{components:{"minecraft:custom_data":{TempItem:1b}}}}]
kill @e[type=item_display,sort=nearest,tag=RD.block.arcane_table,distance=..0.5]
loot spawn ~ ~0.5 ~ loot custom_items:misc/arcane_table
kill @s