execute at @s run playsound block.glass.break master @a ~ ~ ~ 1 1 0
execute store result score @s arc.NowHealth run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 15
scoreboard players set @s arc.Ice 0