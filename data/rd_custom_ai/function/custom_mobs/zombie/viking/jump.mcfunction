playsound entity.goat.long_jump hostile @a ~ ~ ~ 1 1
execute facing entity @n[tag=zombies.target] eyes run function rd_custom_ai:custom_mobs/jump_forward
