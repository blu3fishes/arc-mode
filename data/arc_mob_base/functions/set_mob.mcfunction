function arc_mob_base:set_advanced_mob
execute as @e[type=armor_stand,tag=MobPass]

execute as @e[type=cow,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/cow
execute as @e[type=sheep,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/sheep
execute as @e[type=pig,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/pig
execute as @e[type=chicken,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/chicken
execute as @e[type=creeper,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/creeper
execute as @e[type=skeleton,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/skeleton
execute as @e[type=stray,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/stray
execute as @e[type=zombie,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/zombie
execute as @e[type=drowned,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/drowned
execute as @e[type=spider,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/spider
execute as @e[type=enderman,tag=!check,distance=..70,sort=random] at @s run function arc_mobs:mobs/enderman