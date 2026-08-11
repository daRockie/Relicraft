data modify storage rockietools:player temp.respawn.dimension set value "minecraft:overworld"

execute unless data entity @s respawn run return run function rd_custom_items:items/misq/warp_potion/tp_to_certain_pos with storage rockietools:player meta.respawn

data modify storage rockietools:player temp.respawn.x set from entity @s respawn.pos[0]
data modify storage rockietools:player temp.respawn.y set from entity @s respawn.pos[1]
data modify storage rockietools:player temp.respawn.z set from entity @s respawn.pos[2]
data modify storage rockietools:player temp.respawn.dimension set from entity @s respawn.dimension
data modify storage rockietools:player temp.respawn.yaw set from entity @s respawn.yaw
data modify storage rockietools:player temp.respawn.pitch set from entity @s respawn.pitch

function rd_custom_items:items/misq/warp_potion/tp_to_certain_pos with storage rockietools:player temp.respawn