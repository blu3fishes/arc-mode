execute at @s as @e[type=!player,tag=Hurt,distance=..7] run function arc_skills:skills/scythe/dark_effect
scoreboard players remove @s arc.Mana 100
execute as @e[tag=dark_scythe] run function arc_skills:skills/scythe/dark_hit
tag @e[tag=dark_scythe] remove dark_scythe