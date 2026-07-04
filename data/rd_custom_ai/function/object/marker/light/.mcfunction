execute align xyz run tp @s ~0.5 ~0.5 ~0.5

$fill ~ ~ ~ ~ ~ ~ light[level=$(light)] replace air

scoreboard players add @s RD.ai_timer 1

# particle happy_villager

$fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace light[level=$(light)] outline

execute if entity @s[scores={RD.ai_timer=2..}] run function rd_custom_ai:object/marker/light/vanish with entity @s data