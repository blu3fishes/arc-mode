execute at @e[type=cow,tag=!check] run function arc_mobs:mobs/cow
execute at @e[type=sheep,tag=!check] run function arc_mobs:mobs/sheep
execute at @e[type=pig,tag=!check] run function arc_mobs:mobs/pig
execute at @e[type=chicken,tag=!check] run function arc_mobs:mobs/chicken
execute at @e[type=creeper,tag=!check] run function arc_mobs:mobs/creeper
execute at @e[type=skeleton,tag=!check] run function arc_mobs:mobs/skeleton
execute at @e[type=stray,tag=!check] run function arc_mobs:mobs/stray
execute at @e[type=zombie,tag=!check] run function arc_mobs:mobs/zombie
execute at @e[type=drowned,tag=!check] run function arc_mobs:mobs/drowned
execute at @e[type=spider,tag=!check] run function arc_mobs:mobs/spider
execute at @e[type=enderman,tag=!check] run function arc_mobs:mobs/enderman

execute at @e[type=creeper] run particle dust 0.106 0.561 0.106 1 ~ ~ ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=skeleton] run particle dust 0.255 0.427 0.988 1 ~ ~1.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=spider] run particle dust 0.369 0.38 0.373 1 ~ ~0.8 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=enderman] run particle dust 0.808 0.071 0.624 1 ~ ~2.5 ~ 0.1 0.1 0.1 0.3 3 force
execute at @e[type=zombie] run particle dust 0.027 0.42 0.204 1 ~ ~1.5 ~ 0.1 0.1 0.1 0.3 3 force