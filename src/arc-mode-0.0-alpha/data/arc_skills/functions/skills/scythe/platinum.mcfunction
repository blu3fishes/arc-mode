execute at @s run tag @e[tag=Hurt,distance=..7] add platinum_scythe
scoreboard players remove @s arc.Mana 100
execute at @e[tag=platinum_scythe] run particle dust 0.286 0.318 0.38 1 ~ ~ ~ 0.7 0.7 0.7 7 1400 force
execute as @e[tag=platinum_scythe] run function arc_skills:skills/scythe/platinum_hit
tag @e[tag=platinum_scythe] remove platinum_scythe