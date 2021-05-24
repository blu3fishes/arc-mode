# This Commands are set based on Only Prototype,
# If You Think about World Mode Generation, pls modify this command
# 일단 몹에 대해서만 해놨고 유저 커스텀 보우는 알아서 .. ^^
execute as @e[type=skeleton,tag=!arc_processed] run function arc_mob_base:custom_ranged/skel_process
execute as @e[type=stray,tag=!arc_processed] run function arc_mob_base:custom_ranged/stray_process
execute as @e[type=arrow,tag=!arc_processed] run function arc_mob_base:custom_ranged/arrow_process
# Bow Type = 1, 2 damage / Bow Type = 2, 4 damage
execute as @e[tag=damage,nbt={inGround:1b}] run function arc_mob_base:custom_ranged/landed
execute as @e[nbt={ActivePotionEffects:[{Id:27b}]}] run function arc_mob_base:custom_ranged/hit