playsound entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound entity.creeper.hurt hostile @a ~ ~ ~ 1 1

particle lava ~ ~2 ~ 0.5 0.5 0.5 0.05 20

summon creeper ~ ~ ~ {attributes:[{"base":0.7f,id:"scale"},{base:0.35f,id:"movement_speed"}],Tags:["RD.mini_creeper","RD.initialized"],ExplosionRadius:2,Fuse:10,Health:6}

spreadplayers ~ ~ 1 8 false @e[type=creeper,distance=0..0.5,tag=RD.mini_creeper]
