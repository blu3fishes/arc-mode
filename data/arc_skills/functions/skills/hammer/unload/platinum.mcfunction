# KABOOM!
tag @s add notme
execute at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 1.2 0
execute at @s run execute as @e[type=!player,distance=..3] run function arc_skills:skills/dmg_effect_2
execute at @s run particle block minecraft:stone ~ ~0.3 ~ 3 0.2 3 0.4 3000 force
tag @s remove notme