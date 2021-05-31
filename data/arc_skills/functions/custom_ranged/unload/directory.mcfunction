# execute if score .type arc.BowType matches 1 run function arc_skills:custom_ranged/unload/two_damage
# execute if score .type arc.BowType matches 2 run function arc_skills:custom_ranged/unload/four_damage
execute if score .type arc.BowType matches 1 run kill @s
execute if score .type arc.BowType matches 2 run kill @s
execute if score .type arc.BowType matches 3 run kill @s
execute if score .type arc.BowType matches 4 at @s run summon lightning_bolt ~ ~ ~
execute if score .type arc.BowType matches 4 run kill @s