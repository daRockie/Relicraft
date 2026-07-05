execute if items entity @s weapon.mainhand bow[custom_data~{RD.hasAlready:1b},!custom_data~{RD.chevalier_shield:1b}] run tag @s add RD.chevalier.arch
execute if items entity @s weapon.mainhand #swords[!custom_data] run tag @s add RD.chevalier.swordsman
execute if items entity @s weapon.mainhand bow[custom_data~{RD.chevalier_shield:1b}] run tag @s add RD.chevalier.tank

execute unless items entity @s[tag=RD.chevalier.tank] weapon.offhand * run item replace entity @s weapon.offhand with iron_spear

tag @s add RD.chevalier.role_set