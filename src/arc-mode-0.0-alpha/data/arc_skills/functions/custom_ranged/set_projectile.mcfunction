# This Commands are set based on Only Prototype,
# If You Think about World Mode Generation, pls modify this command
# 일단 몹에 대해서만 해놨고 유저 커스텀 보우는 알아서 .. ^^
execute as @a run function arc_skills:custom_ranged/user_process
execute as @a run execute store result score @s arc.BowType run data get entity @s SelectedItem.tag.bow

execute as @e[type=skeleton,tag=!arc_processed] run function arc_skills:custom_ranged/skel_process
execute as @e[type=stray,tag=!arc_processed] run function arc_skills:custom_ranged/stray_process
execute as @e[type=arrow,tag=!arc_processed] run function arc_skills:custom_ranged/arrow_process
# Bow Type = 1, 2 damage / Bow Type = 2, 4 damage
# Bow Type = 3 : Ice Bow
execute as @e[type=arrow,tag=arc_processed,nbt={inGround:1b}] run function arc_skills:custom_ranged/landed
execute as @e[nbt={ActiveEffects:[{Id:27b}]}] run function arc_skills:custom_ranged/hit
execute as @a[scores={arc.Skeletons=1}] run function arc_skills:custom_ranged/unload/two_damage_plyr
scoreboard players remove @a[scores={arc.Skeletons=1..}] arc.Skeletons 1

# custom effect 
execute at @e[type=arrow,tag=ice] run particle dust 0.016 0.624 0.973 1 ~ ~ ~ 0 0 0 0.2 4 force