# $say $(args) $(place)

# say illegal item

$item replace entity @s armor.head from $(args) $(place)

summon item ~ ~1 ~ {Tags:["RD.illegal_item"],Item:{id:"barrier"}}

data modify entity @n[type=item,tag=RD.illegal_item] Item set from entity @s equipment.head

item replace entity @s armor.head with air