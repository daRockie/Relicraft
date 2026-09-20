tag @s[tag=!RD.player.flags.jumped] add RD.player.flags.jumped

execute if entity @s[tag=RD.player.flags.jumped,predicate=rd_system:mob_condition/on_ground] run return run tag @s remove RD.player.flags.jumped

execute rotated ~ 0 anchored eyes positioned ~ ~2 ~ run function rd_asset_mobs:summon/object/text_display/summon {"text":{"text":"ぴょいーん！",italic:0b,color:white},timer:20}

