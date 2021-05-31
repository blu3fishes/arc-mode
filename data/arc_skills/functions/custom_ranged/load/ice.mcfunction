data modify entity @s CustomPotionEffects append value {Id:27b,Amplifier:3b,Duration:100}
data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:2b,Duration:60}
execute store result entity @s damage byte 1.5 run data get entity @s damage
data modify entity @s Color set value 720895
tag @s add ice_center
tag @s add ice

execute store result score .search arc.UUID0 run data get entity @s Owner[0]
execute store result score .search arc.UUID1 run data get entity @s Owner[1]
execute store result score .search arc.UUID2 run data get entity @s Owner[2]
execute store result score .search arc.UUID3 run data get entity @s Owner[3]
execute as @e if score @s arc.UUID0 = .search arc.UUID0 if score @s arc.UUID1 = .search arc.UUID1 if score @s arc.UUID2 = .search arc.UUID2 if score @s arc.UUID3 = .search arc.UUID3 run function arc_skills:custom_ranged/ice/summon_arrow

tag @s remove ice_center