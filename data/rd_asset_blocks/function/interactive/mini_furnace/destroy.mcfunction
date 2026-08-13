#playsound entity.item.break block @a ~ ~ ~ 2 1
#particle explosion ~ ~ ~
# particle cloud ~ ~ ~ 0.05 0.05 0.05 0.025 5
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace flower_pot
kill @e[type=item,distance=0..2,nbt={Item:{id:"minecraft:flower_pot"}},tag=!RD.initialized]
kill @e[type=item_display,sort=nearest,tag=RD.block.mini_furnace,distance=..0.5]
loot spawn ~ ~0.5 ~ loot rd_custom_items:misc/mini_furnace
kill @s