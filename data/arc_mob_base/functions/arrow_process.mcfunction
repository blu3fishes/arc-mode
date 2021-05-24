tag @s add arc_processed

execute store result score .search UUID0 run data get entity @s Owner[0]
execute store result score .search UUID1 run data get entity @s Owner[1]
execute store result score .search UUID2 run data get entity @s Owner[2]
execute store result score .search UUID3 run data get entity @s Owner[3]

scoreboard players set .type arc.BowType 0
execute as @e if score @s UUID0 = .search arc.UUID0 if score @s UUID1 = .search arc.UUID1 if score @s UUID2 = .search arc.UUID2 if score @s UUID3 = .search UUID3 run function arc_mob_base:owner
 
 execute if score .type arc.BowType matches 1.. run function arc_mob_base:load/directory