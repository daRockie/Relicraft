# ★ レシピのjson構築 ★
# 便利だけど超絶処理量が跳ね上がる

# 全てリセット
data modify storage rockietools:custom_recipe list.crafter set value []
data modify storage rockietools:custom_recipe meta.crafter set value []
data remove storage rockietools:custom_recipe temp_crafter

# ◆項目の解説
#
# allowed_slot: レシピモード時、アイテムを置くことが許可されているスロット
# crafting_slot: クラフトモード時にアイテムを置くことが許可されているスロット
# 
data modify storage rockietools:custom_recipe meta.crafter set value \
{\
    allowed_slot:\
    [\
        {entry:"1"},\
        {entry:"2"},\
        {entry:"3"},\
        {entry:"4"},\
        {entry:"5"},\
        {entry:"6"},\
        {entry:"7"},\
        {entry:"10"},\
        {entry:"11"},\
        {entry:"12"},\
        {entry:"13"},\
        {entry:"14"},\
        {entry:"15"},\
        {entry:"16"},\
        {entry:"17"},\
        {entry:"19"},\
        {entry:"20"},\
        {entry:"21"},\
        {entry:"22"},\
        {entry:"23"},\
        {entry:"24"},\
        {entry:"25"}\
    ],\
    crafting_slot:\
    [\
        {entry:"3"},\
        {entry:"4"},\
        {entry:"5"},\
        {entry:"12"},\
        {entry:"13"},\
        {entry:"14"},\
        {entry:"21"},\
        {entry:"22"},\
        {entry:"23"}\
    ]\
}

# ～以下、レシピ（全項目省略不可）～
# 
# ◆ result
# -> name: アイテム名。レシピモードでアイテムを検索するときに使う
# -> table: レシピ検索画面、またはクラフト時に参照するアイテムのルートテーブル
# 
# ◆ ingredient　必ず八項目必要、省略不可能
# -> declear: execute文の分岐（if / unless）。ifで「～のとき」、unlessで「～でないとき」になる
# 
# **空白の定義文**
# -> {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},
# 
# -> modifier: 最重要！レシピで要求するアイテムデータを書き込む。コンポーネントの扱いに注意（イコールでカスタムidを指定するのはおススメしない）
# -> table: レシピモード時に表示される素材のルートテーブル
# -> count: アイテムの最低要求量


# data modify storage rockietools:custom_recipe list.crafter.menu append value {function:"null",}

# data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Null",\
            table:"rd_recipe:null",\
            sort:[{}],\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのヘルメット",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/helmet",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"armor"}],\            
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのチェストプレート",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/chestplate",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"armor"}],\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのレギンス",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/leggings",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"armor"}],\            
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのブーツ",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/boots",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"armor"}],\                        
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのツルハシ",\
            table:"rd_recipe:custom_crafter/item.tool/ruby/pickaxe",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"tools"}],\            
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーの剣",\
            table:"rd_recipe:custom_crafter/item.tool/ruby/sword",\
            sort:[{key:"ingredient/ore/ruby"},{key:"ingredient/ore"},{key:"tools"}],\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{RD.item:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}


data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"魔導書",\
            table:"rd_recipe:custom_crafter/item.misq/grimoire",\
            sort:[{key:"ingredient/ore/peridot"},{key:"misq"},{key:"sorcery"}]\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{RD.item:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{RD.item:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"if", modifier:"book", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{RD.item:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{RD.item:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}

# data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"鎮魂歌の残響",\
            table:"rd_recipe:custom_crafter/item.misq/scrolls/craftable/reverberation",\
            sort:[{key:"misq"},{key:"sorcery"},{key:"sorcery/scrolls"}]\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"book[custom_data~{RD.item:\"RD.grimoire\"}]", table:"rd_recipe:ingredient/grimoire",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"息吹の香炉",\
            table:"rd_recipe:custom_crafter/item.misq/green_furnace",\
            sort:[{key:"misq"},{key:"sorcery"},{key:"accesory"},{key:"type/talisman"}]\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"book[custom_data~{RD.item:\"RD.grimoire\"}]", table:"rd_recipe:ingredient/grimoire",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"炭鉱夫のコンパス",\
            table:"rd_recipe:custom_crafter/item.abilities/mining_compass",\
            sort:[{key:"misq"},{key:"abilities"},{key:"mining"}]\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"book[custom_data~{RD.item:\"RD.grimoire\"}]", table:"rd_recipe:ingredient/grimoire",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
        {declear:"if", modifier:"sculk", table:"",count:1},\
        {declear:"if", modifier:"echo_shard", table:"",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ハーブの袋",\
            table:"rd_recipe:ingredient/craftables/bag_with_herbs",\
            sort:[{key:"drop"},{key:"ingredient/greenery"},{key:"ingredient"}]\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:4},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:4},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:4},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:4},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"music_disc_blocks[custom_data~{RD.item:\"RD.smoldering_fallen_leaves\"}]", table:"rd_recipe:ingredient/drops/smoldering_fallen_leaves",count:4},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}