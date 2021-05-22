attribute @s minecraft:generic.max_health modifier add 7fb2a720-fb7d-4e2e-951a-7cc1125640c1 "health_triple" 3 multiply_base
effect give @s minecraft:regeneration 1 100 false
tag @s remove NotPoisoning
tag @s add Poisoning
scoreboard players set @s arc.AdvMob 2