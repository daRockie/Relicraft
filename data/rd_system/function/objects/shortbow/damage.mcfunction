# say hit

playsound entity.arrow.hit hostile @a ~ ~ ~ 1 1

# オーナーにタグを付与
$tag @n[nbt={UUID:$(owner)},distance=..100] add RD.projectile.owner

# オーナーにとってのターゲットを取る
execute as @n[tag=RD.projectile.owner] if entity @s[type=!player] on target run tag @s add RD.archer_zombie.target

# ゾンビ同士討ち防止（ゾンビに対して敵対状態の場合、これを解除）
execute if entity @n[tag=RD.projectile.owner,predicate=rd_asset_mobs:in_hostile_to_each_other] unless entity @n[type=#undead,distance=..2,tag=RD.archer_zombie.target] run return run tag @n[tag=RD.archer_zombie.target] remove RD.archer_zombie.target

# 自身のオーナーが最寄りのモブでない場合、実行主をオーナーとして最寄りのモブにバイパスダメージ３を付与
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[distance=0.01..,dx=0,dy=0,dz=0,tag=!RD.shortbow,type=!#ammos_dont_damage_to,tag=!RD.projectile.owner] positioned as @s run damage @s $(damage) rd_system:bypassing_arrow by @n[tag=RD.projectile.owner]
particle minecraft:poof ~ ~ ~ 0.05 0.05 0.05 0.05 5

# ヒット時、オーナーにサウンドを再生
execute at @p[tag=RD.projectile.owner] run playsound minecraft:entity.experience_orb.pickup master @p[tag=RD.projectile.owner] ~ ~ ~ 0.5 0.5

# ターゲット解除
tag @n[tag=RD.archer_zombie.target] remove RD.archer_zombie.target

# オーナー削除
tag @n[tag=RD.projectile.owner] remove RD.projectile.owner

kill @s
