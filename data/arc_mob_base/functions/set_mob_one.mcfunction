function arc_mob_base:set_advanced_mob

## Automated Commands Below Here.
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie/process