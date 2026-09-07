# ボタン系統

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"全てのレシピ",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/show_all",\
            sort:[{key:"ui_buttons/startup"},{key:"ui_buttons"}],\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore_all",\
            sort:[{key:"ui_buttons/startup"},{key:"ui_buttons"}],\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"light",table:"rd_recipe:air",count:1},\
    ]\
}