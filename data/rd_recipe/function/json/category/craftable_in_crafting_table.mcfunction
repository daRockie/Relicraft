# ルビー

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビー",\
            table:"rd_recipe:ingredient/ruby",\
            sort:[{key:"craftable_in_crafting_table"}],\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"redstone[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"redstone[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"diamond[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"redstone[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"redstone[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"red_dye[!custom_data]",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ペリドット",\
            table:"rd_recipe:ingredient/peridot",\
            sort:[{key:"craftable_in_crafting_table"}],\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"lapis_lazuli[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"lapis_lazuli[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"emerald[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"lapis_lazuli[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"lapis_lazuli[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ミニかまど",\
            table:"rd_custom_items:misc/mini_furnace",\
            sort:[{key:"craftable_in_crafting_table"}],\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"iron_ingot[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"iron_ingot[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"iron_ingot[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"furnace[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"iron_ingot[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"iron_ingot[!custom_data]",table:"rd_recipe:air",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:air",count:1},\
    ]\
}





