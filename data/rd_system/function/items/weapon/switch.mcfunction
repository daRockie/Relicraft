# $say $(address)

# ダメージ計算
scoreboard players operation $CHANGEABLE.max_damage RD.item.durabity -= $CHANGEABLE.damage RD.item.durabity
# tellraw @a [{"text":"計算結果: ",italic:false},{"score":{name:"$CHANGEABLE.max_damage",objective:"RD.item.durabity"}}]

# 現在ダメージ値を最大ダメージ値に再代入
execute store result storage rockietools:item_modifier temp.current_damage int 1 run scoreboard players get $CHANGEABLE.max_damage RD.item.durabity

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$CHANGEABLE.max_damage",objective:"RD.item.durabity"}}]

# マナ不足の場合処理を終了
execute unless score @s RD.mana >= $CHANGEABLE.mana_use RD.item.durabity run return run function rd_custom_items:items/not_enough_mana

# マナが足りているなら武器に書き込まれているfunctionを実行
$execute if score @s RD.mana >= $CHANGEABLE.mana_use RD.item.durabity run function $(function)

# マナ消費
execute if score $CHANGEABLE.mana_use RD.item.durabity matches 1.. run function rd_system:mana/use_mana

# 現在ダメージ値から一回の使用ごとに減るダメージを計算
function rd_system:items/weapon/rng with storage rockietools:item_modifier temp

# マナ消費メッセージ
$execute if score $CHANGEABLE.mana_use RD.item.durabity matches 1.. run tellraw @s [{"score":{"name":"$CHANGEABLE.mana_use",objective:"RD.item.durabity"},color:"aqua"},{"text":" Mana(","color":"aqua"},{"text":"$(skill_name)","color":"gold"},{"text":")","color":"aqua"}]
