# KABOOM!
tag @s add notme
execute at @s run particle flame ~ ~0.3 ~ 1 0 1 0.2 10 force
execute at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 0.9 1
execute at @s run execute as @e[tag=!notme,distance=..5] run function arc_skills:skills/dmg_effect_2
execute at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 3 0.2 3 0.4 3000 force
tag @s remove notme