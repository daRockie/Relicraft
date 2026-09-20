execute positioned ~ ~1 ~ run function rd_asset_mobs:summon/object/text_display/summon {"text":{"text":"クラフトグリッドからアイテムを取ってください！",color:"red",bold:1b},timer:40}
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.5
item replace block ~ ~ ~ container.10 with knowledge_book[enchantment_glint_override=1b,custom_name={"text":"レシピを確認する","italic":0b},custom_data={TempItem:1b}]
