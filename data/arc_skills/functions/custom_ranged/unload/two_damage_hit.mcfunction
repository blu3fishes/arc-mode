# remove 2 health.

execute store result score @s arc.NowHealth run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 2
execute as @s[type=player] run scoreboard players set @s arc.Skeletons 10

effect clear @s unluck