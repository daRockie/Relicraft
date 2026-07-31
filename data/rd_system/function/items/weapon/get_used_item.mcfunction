data modify storage rockietools:item_modifier temp.tools set value {}

execute if items entity @s weapon.mainhand *[custom_data~{Used:1b}] run function rd_system:items/weapon/set_address/used_item/mainhand

# execute unless items entity @s weapon.mainhand *[custom_data~{Used:1b}] run function rd_system:items/weapon/set_address/used_item/offhand
execute if items entity @s weapon.offhand *[custom_data~{Used:1b}] run function rd_system:items/weapon/set_address/used_item/offhand

function rd_system:items/weapon/switch with storage rockietools:item_modifier temp.tools
function rd_system:items/weapon/return with storage rockietools:item_modifier temp.tools

advancement revoke @s only rd_system:inventory