# KABOOM!
tag @s add notme
execute at @s run execute as @e[tag=!notme,distance=..2] run function arc_skills:skills/dmg_effect_1
execute at @s run particle block minecraft:stone ~ ~ ~ 2 0 2 0.4 300 force 
tag @s remove notme