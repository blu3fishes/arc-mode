tag @s add arc_processed

execute store result score .search arc.UUID0 run data get entity @s Owner[0]
execute store result score .search arc.UUID1 run data get entity @s Owner[1]
execute store result score .search arc.UUID2 run data get entity @s Owner[2]
execute store result score .search arc.UUID3 run data get entity @s Owner[3]

scoreboard players set .type arc.BowType 0
#if owner exits.
execute as @e if score @s arc.UUID0 = .search arc.UUID0 if score @s arc.UUID1 = .search arc.UUID1 if score @s arc.UUID2 = .search arc.UUID2 if score @s arc.UUID3 = .search arc.UUID3 run function arc_skills:custom_ranged/owner
execute if score .type arc.BowType matches 1.. run function arc_skills:custom_ranged/load/directory