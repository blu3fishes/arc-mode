data modify entity @s CustomPotionEffects append value {Id:27b,Amplifier:1b,Duration:100}
execute store result score .damage arc.BowType run data get entity @s damage
execute store result entity @s damage double 1 run scoreboard players add .damage arc.BowType 2
tag @s add damage