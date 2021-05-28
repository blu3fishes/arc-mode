function arc_mob_base:set_advanced_mob

## Automated Commands Below Here.
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=zombie,limit=1] run function arc_mob_base:mobs/zombie/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=drowned,limit=1] run function arc_mob_base:mobs/drowned/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=husk,limit=1] run function arc_mob_base:mobs/husk/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=skeleton,limit=1] run function arc_mob_base:mobs/skeleton/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=stray,limit=1] run function arc_mob_base:mobs/stray/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=cave_spider,limit=1] run function arc_mob_base:mobs/cave_spider/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=spider,limit=1] run function arc_mob_base:mobs/spider/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=creeper,limit=1] run function arc_mob_base:mobs/creeper/process
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute as @e[tag=!Check,type=guardian,limit=1] run function arc_mob_base:mobs/guardian/process