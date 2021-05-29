execute as @s run function arc_skills:skills/dmg_effect_1
execute store result score @s arc.NowHealth run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 13
execute at @s run particle witch ~ ~ ~ 0.4 0.7 0.4 7 1400 force