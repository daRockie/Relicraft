# say no crafter!

#playsound entity.item.break block @a ~ ~ ~ 2 1
# playsound block.wood.break block @a ~ ~ ~ 1 1
#particle explosion ~ ~ ~
particle cloud ~ ~ ~ 0.05 0.05 0.05 0.025 5
setblock ~ ~ ~ air destroy
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{bold:1b}},id:"minecraft:barrel"}}]
execute as @e[type=item,distance=..20] at @s if items entity @s container.0 *[custom_data~{TempItem:1b}] run kill @s
kill @e[type=item_display,sort=nearest,tag=RD.block.customCrafter,distance=..0.5]
loot spawn ~ ~0.5 ~ loot rd_custom_items:misc/advanced_crafter
kill @s