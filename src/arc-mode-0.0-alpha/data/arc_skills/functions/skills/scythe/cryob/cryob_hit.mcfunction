execute store result score @s arc.NowHealth run data get entity @s Health
scoreboard players remove @s arc.NowHealth 19
execute at @s[scores={arc.NowHealth=..0}] run function arc_skills:skills/scythe/death
execute store result entity @s Health float 1 run scoreboard players get @s arc.NowHealth