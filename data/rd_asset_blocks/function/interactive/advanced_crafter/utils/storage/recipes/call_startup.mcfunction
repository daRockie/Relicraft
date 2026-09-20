# say startup

# temp消去
data remove storage rockietools:custom_recipe temp.category

# 全レシピが入ったデータをコピー
data modify storage rockietools:custom_recipe temp.category set from storage rockietools:custom_recipe list.crafter

# 頭装備にすたっしゅデータをセット
data modify entity @s equipment.head.components."minecraft:custom_data".data.stash set from entity @s equipment.mainhand.components."minecraft:custom_data"

# UIボタンの属性を含むデータをすべて削除
data remove storage rockietools:custom_recipe temp.category[{result:{sort:[{key:"ui_buttons"}]}}]

# tellraw @a [{"storage":"rockietools:custom_recipe",nbt:"temp.category"}]