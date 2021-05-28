# KABOOM!
tag @s add notme
execute at @s run particle explosion ~ ~0.3 ~ 1 0 1 0.2 10 force
execute at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 0.9 1
execute at @s run execute as @e[tag=!notme,distance=..3] run function arc_skills:skills/dmg_effect_2
execute at @s run particle block minecraft:stone ~ ~0.3 ~ 2 0 2 0.4 30 force
tag @s remove notme