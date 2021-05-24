# remove 2 health.
execute store result score .type arc.BowType run data get entity @s ActiveEffects[{Id:27b}].Amplifier
execute store result score @s arc.NowHealth run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 2
effect clear @s unluck