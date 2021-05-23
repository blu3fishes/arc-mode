execute store result score @s arc.NowHealth run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 2
effect clear @s unluck