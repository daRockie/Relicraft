# replaceコマンドをある程度自由に実行できるようにする
$execute if items $(args) $(place) *[!custom_data~{TempItem:1b}] run function rd_recipe:summon_illegal_item {"place":"$(place)","args":"$(args)"}
$loot replace $(args) $(place) loot $(table)