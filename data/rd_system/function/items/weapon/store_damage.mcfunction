
### Initialize

# ダメージのコンポーネントデータがあった時、ダメージデータを取得してストレージに代入、エンチャントも同様
$execute if data entity @s $(address).components."minecraft:damage" store result storage rockietools:item_modifier temp.current_damage int 1 run data get entity @s $(address).components."minecraft:damage"

# マナ割引
execute store result score $CHANGEABLE.mana_reduce RD.item.durabity run data get storage rockietools:item_modifier temp.enchantments."rd_custom_items:mana_reduce" 1
execute if score $CHANGEABLE.mana_reduce RD.item.durabity matches 0 run scoreboard players set $CHANGEABLE.mana_reduce RD.item.durabity 1

# ダメージデータが存在しなかったとき、現在のダメージ値を0に設定
$execute unless data entity @s $(address).components."minecraft:damage" run data modify storage rockietools:item_modifier temp.current_damage set value 0
$execute unless data entity @s $(address).components."minecraft:enchantments" run data modify storage rockietools:item_modifier temp.enchantments set value {}

# 耐久値エンチャント
$execute if data entity @s $(address).components."minecraft:enchantments"."minecraft:unbreaking" store result storage rockietools:item_modifier temp.unbreaking int 1 run data get entity @s $(address).components."minecraft:enchantments"."minecraft:unbreaking" 1
$execute unless data entity @s $(address).components."minecraft:enchantments"."minecraft:unbreaking" run data modify storage rockietools:item_modifier temp.unbreaking set value 1

# もしマナ消費が存在すれば、それを記録
$execute if data entity @s $(address).components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use" store result storage rockietools:item_modifier temp.mana_use int 1 run data get entity @s $(address).components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use"
$execute unless data entity @s $(address).components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use" store result storage rockietools:item_modifier temp.mana_use int 1 run data modify storage rockietools:item_modifier temp.mana_use set value 0

# 耐久値消費量を取得
$data modify storage rockietools:item_modifier temp.damage_per_use set value $(damage_per_use)
$data modify storage rockietools:item_modifier temp.skill_name set value "$(skill_name)"
$data modify storage rockietools:item_modifier temp.id set from entity @s $(address).id
$data modify storage rockietools:item_modifier temp.break_sound set value "$(break_sound)"

# 最大耐久値を取得
$data modify storage rockietools:item_modifier temp.max_damage set from entity @s $(address).components."minecraft:max_damage"


# スコアに取得したデータを代入
execute store result score $CHANGEABLE.mana_use RD.item.durabity run data get storage rockietools:item_modifier temp.mana_use 1

scoreboard players operation $CHANGEABLE.mana_use RD.item.durabity /= $CHANGEABLE.mana_reduce RD.item.durabity

execute store result score $CHANGEABLE.max_damage RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 10000
execute store result score $CHANGEABLE.max_damage_tmp RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 1

execute store result score $CHANGEABLE.damage RD.item.durabity run data get storage rockietools:item_modifier temp.current_damage 10000

execute store result score $CHANGEABLE.damage_per_use RD.item.durabity run data get storage rockietools:item_modifier temp.damage_per_use 10000

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$CHANGEABLE.max_damage",objective:"RD.item.durabity"}}]
# tellraw @a [{"text":"Damage: ",italic:false},{"score":{name:"$CHANGEABLE.damage",objective:"RD.item.durabity"}}]
