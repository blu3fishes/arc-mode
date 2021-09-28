execute as @s run function arc_skills:skills/dmg_effect_1
execute store result score @s arc.NowHealth run data get entity @s Health
scoreboard players remove @s arc.NowHealth 13
execute at @s[scores={arc.NowHealth=..0}] run function arc_skills:skills/scythe/death
execute store result entity @s Health float 1 run scoreboard players get @s arc.NowHealth
execute at @s run particle witch ~ ~ ~ 0.4 0.7 0.4 7 1400 force