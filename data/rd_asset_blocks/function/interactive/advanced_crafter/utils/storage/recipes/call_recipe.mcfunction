# tellraw @a [{"nbt":"temp.input.parent[-1].keys",storage:"rockietools:custom_recipe"}]

# tempを削除
data remove storage rockietools:custom_recipe temp.category

# tempを再設定
data modify storage rockietools:custom_recipe temp.category set value []

# スタッシュデータを手に所持したアイテムからセット
data modify entity @s equipment.head.components."minecraft:custom_data".data.stash set from entity @s equipment.mainhand.components."minecraft:custom_data"

# マクロで指定したキーのアイテムを拾う
$data modify storage rockietools:custom_recipe temp.category append from storage rockietools:custom_recipe list.crafter[{result:{sort:[$(keys)]}}]

# parentの最後から1個目の項目を削除
data remove storage rockietools:custom_recipe temp.input.parent[-1]

# tellraw @a [{"storage":"rockietools:custom_recipe",nbt:"temp.category"}]