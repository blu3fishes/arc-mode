execute at @s run tag @e[tag=Hurt,distance=..7] add diamond_scythe
scoreboard players remove @s arc.Mana 100
execute as @e[tag=diamond_scythe] run function arc_skills:skills/scythe/diamond_hit
execute at @e[tag=diamond_scythe] run particle dust 0.141 0.373 0.388 1 ~ ~ ~ 0.7 0.7 0.7 7 1400 force
tag @e[tag=diamond_scythe] remove diamond_scythe