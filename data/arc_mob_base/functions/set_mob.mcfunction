function arc_mob_base:set_advanced_mob

function arc_system:get_random/get_random
execute if score Random48 arc.Random matches 4.. run execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie
execute if score Random48 arc.Random matches 0 run execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie_armored
execute if score Random48 arc.Random matches 1 run execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie_antimagic
execute if score Random48 arc.Random matches 2 run execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie_poison
execute if score Random48 arc.Random matches 3 run execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie_lightened
