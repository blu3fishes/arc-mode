bossbar set minecraft:skeleton_king visible true
execute as @a[distance=..40] run bossbar set skeleton_king players @s
execute store result bossbar skeleton_king value run data get entity @s Health