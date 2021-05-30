attribute @s minecraft:generic.max_health modifier add 140ee845-7308-4e3d-ae32-9ca73b4f90ab "health_double" 1.5 multiply_base
execute store result score .health arc.NowHealth run attribute @s minecraft:generic.max_health get
execute store result entity @s Health float 1 run scoreboard players get .health arc.NowHealth
tag @s add Lightened
tag @s remove NotLightened
scoreboard players set @s arc.AdvMob 3