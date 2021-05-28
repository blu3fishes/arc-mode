execute as @a run execute store result score @s arc.Heart_p run data get entity @s Health
execute as @a run execute store result score @s arc.Heart run attribute @s minecraft:generic.max_health get
execute as @a run execute if score @s arc.Heart < @s arc.Heart_p run effect give @s poison 1 255 true