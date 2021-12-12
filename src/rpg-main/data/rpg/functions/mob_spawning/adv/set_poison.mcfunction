attribute @s minecraft:generic.max_health modifier add 7fb2a720-fb7d-4e2e-951a-7cc1125640c1 "health_triple" 2 multiply_base
execute store result score .health arc.NowHealth run attribute @s minecraft:generic.max_health get
execute store result entity @s Health float 1 run scoreboard players get .health arc.NowHealth
tag @s remove NotPoisoning
tag @s add Poisoning
tag @s add LootAdv
team join poison @s
scoreboard players set @s arc.AdvMob 2