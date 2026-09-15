data modify storage rockietools:custom_recipe temp.category append value \
{\
    result:\
        {\
            name:"ここには何もないようです... :(",\
            table:"rd_recipe:custom_crafter/internal/ui/null",\
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

data modify storage rockietools:custom_recipe temp_crafter.list append value \
{\
    result:\
        {\
            name:"ここには何もないようです... :(",\
            table:"rd_recipe:custom_crafter/internal/ui/null",\
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

function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/back