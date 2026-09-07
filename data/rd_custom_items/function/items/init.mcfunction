# say a

# $say $(mana_use)
# $say $(function)

execute on target run tag @s add skeleton.target

$execute if score @s RD.mana matches $(mana_use) run function rd_system:mana/use_mana_macro {"mana":$(mana_use)}

$execute if score @s RD.mana matches $(mana_use).. facing entity @n[tag=skeleton.target] feet run return run function $(function)

function rd_custom_ai:custom_mobs/wizard/not_enough_mana

tag @n[tag=skeleton.target] remove skeleton.target