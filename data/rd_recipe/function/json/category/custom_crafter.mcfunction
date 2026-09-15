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
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
    ]\
}\

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------


# 採掘
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
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
        {declear:"if", modifier:"bedrock",table:"rd_recipe:air",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡石炭",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/coal",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡銅",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/copper",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡鉄",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/iron",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}


data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡金",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/gold",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}


data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡ダイヤ",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/diamond",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡エメラルド",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/emerald",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡ネザライト",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/netherite",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

# レアな鉱石類
data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"採掘➡レアな鉱石類",\
            table:"rd_recipe:custom_crafter/internal/category_buttons/ore/custom_ores/root",\
            sort:[{key:"ui_buttons/ore"},{key:"ui_buttons"}],\
        }\
}
