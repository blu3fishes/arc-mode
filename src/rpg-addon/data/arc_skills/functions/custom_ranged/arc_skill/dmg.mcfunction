execute store result score .flamedmg arc.BowType run data get entity @s damage
execute store result entity @s damage float 1.25 run scoreboard players get .flamedmg arc.BowType
tag @s remove flame
tag @s add flame_effect