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

execute at @e[type=creeper,distance=..50] run particle dust 0.106 0.561 0.106 1 ~ ~ ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=skeleton,distance=..50] run particle dust 0.255 0.427 0.988 1 ~ ~1.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=spider,distance=..50] run particle dust 0.369 0.38 0.373 1 ~ ~0.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=enderman,distance=..50] run particle dust 0.808 0.071 0.624 1 ~ ~2.5 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=zombie,distance=..50] run particle dust 0.027 0.42 0.204 1 ~ ~1.5 ~ 0.1 0.1 0.1 0.3 3 force