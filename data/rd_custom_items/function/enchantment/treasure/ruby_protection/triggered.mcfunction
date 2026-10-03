
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1

function rd_system:sys/heal/main {"heal":2}

particle heart ~ ~2 ~ 0.5 0.5 0.5 0.05 5

particle happy_villager ~ ~2 ~ 0.5 0.5 0.5 0.25 5

particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 15

advancement revoke @s only rd_custom_items:item_used/enchantment/treasure/ruby_protection