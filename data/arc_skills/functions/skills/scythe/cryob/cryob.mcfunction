tag @s add cryob_scythe
execute as @s run function arc_skills:skills/scythe/cryob/cryob_hit
execute at @s run particle witch ~ ~ ~ 0.4 0.7 0.4 7 1400 force
execute at @s run scoreboard players set @e[type=!player,tag=!cryob_scythe,distance=..10] arc.CryobScy 16
tag @s remove cryob_scythe