execute store result score .type arc.BowType run data get entity @s ActiveEffects[{Id:27b}].Amplifier
execute if score .type arc.BowType matches 1 run function arc_skills:custom_ranged/unload/two_damage_hit
execute if score .type arc.BowType matches 2 run function arc_skills:custom_ranged/unload/four_damage_hit
execute if score .type arc.BowType matches 3 run function arc_skills:custom_ranged/unload/ice_fire
execute if score .type arc.BowType matches 4 run function arc_skills:custom_ranged/unload/lightning
execute if score .type arc.BowType matches 5 run function rpgslayer_loop:archer/poison_hit