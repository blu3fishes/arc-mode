function arc_mob_base:set_advanced_mob

function arc_system:get_random/get_random

## Automated Commands Below Here.
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie_lightened