execute as @e[type=cow,tag=!check] run function arc_mobs:mobs/cow
execute as @e[type=sheep,tag=!check] run function arc_mobs:mobs/sheep
execute as @e[type=pig,tag=!check] run function arc_mobs:mobs/pig
execute as @e[type=chicken,tag=!check] run function arc_mobs:mobs/chicken
execute as @e[type=creeper,tag=!check] run function arc_mobs:mobs/creeper
execute as @e[type=skeleton,tag=!check] run function arc_mobs:mobs/skeleton
execute as @e[type=stray,tag=!check] run function arc_mobs:mobs/stray
execute as @e[type=zombie,tag=!check] run function arc_mobs:mobs/zombie
execute as @e[type=drowned,tag=!check] run function arc_mobs:mobs/drowned
execute as @e[type=spider,tag=!check] run function arc_mobs:mobs/spider
execute as @e[type=enderman,tag=!check] run function arc_mobs:mobs/enderman
execute at @e[type=creeper] run particle dust 0.106 0.561 0.106 1 ~ ~ ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=skeleton] run particle dust 0.255 0.427 0.988 1 ~ ~1.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=spider] run particle dust 0.369 0.38 0.373 1 ~ ~0.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=enderman] run particle dust 0.808 0.071 0.624 1 ~ ~2.5 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=zombie] run particle dust 0.027 0.42 0.204 1 ~ ~1.5 ~ 0.1 0.1 0.1 0.3 3 force