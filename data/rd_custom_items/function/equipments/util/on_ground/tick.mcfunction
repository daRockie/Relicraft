tag @s add RD.player.flags.on_ground

# particle block{block_state:{id:"tnt"}} ~ ~ ~ 0.5 0.5 0.5 0.05 1

execute if entity @s[scores={RD.jump=1..}] run function rd_custom_items:equipments/util/on_ground/jump

tag @s[tag=RD.player.flags.on_ground] remove RD.player.flags.on_ground
