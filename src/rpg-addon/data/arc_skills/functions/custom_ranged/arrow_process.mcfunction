tag @s add arc_processed

execute store result score .search arc.UUID0 run data get entity @s Owner[0]
execute store result score .search arc.UUID1 run data get entity @s Owner[1]
execute store result score .search arc.UUID2 run data get entity @s Owner[2]
execute store result score .search arc.UUID3 run data get entity @s Owner[3]

scoreboard players set .type arc.BowType 0
#if owner exits.

## owner에 대한 process 도 진행하면서 해당 user의 generic.attack_damage 값도 불러온다.
execute as @e if score @s arc.UUID0 = .search arc.UUID0 if score @s arc.UUID1 = .search arc.UUID1 if score @s arc.UUID2 = .search arc.UUID2 if score @s arc.UUID3 = .search arc.UUID3 run function arc_skills:custom_ranged/owner

## attack_damage의 25% 만큼 화살 데미지 증가.
execute if score .crate arc.BowType >= #random crit_rand run function arc_skills:custom_ranged/do_crit
## flame 화살의 경우 1.25배 추가보너스
execute store result entity @s damage float 0.0000025 run scoreboard players get .atkdmg arc.BowType
execute if entity @s[tag=flame] run function arc_skills:custom_ranged/arc_skill/dmg

execute if score .type arc.BowType matches 1.. run function arc_skills:custom_ranged/load/directory