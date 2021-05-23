function arc_mob_base:set_advanced_mob

## Automated Commands Below Here.
execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie/zombie
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie/zombie_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie/zombie_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie/zombie_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=zombie,limit=1] at @s run function arc_mob_base:mobs/zombie/zombie_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=skeleton,limit=1] at @s run function arc_mob_base:mobs/skeleton/skeleton
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=skeleton,limit=1] at @s run function arc_mob_base:mobs/skeleton/skeleton_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=skeleton,limit=1] at @s run function arc_mob_base:mobs/skeleton/skeleton_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=skeleton,limit=1] at @s run function arc_mob_base:mobs/skeleton/skeleton_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=skeleton,limit=1] at @s run function arc_mob_base:mobs/skeleton/skeleton_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=stray,limit=1] at @s run function arc_mob_base:mobs/stray/stray
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=stray,limit=1] at @s run function arc_mob_base:mobs/stray/stray_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=stray,limit=1] at @s run function arc_mob_base:mobs/stray/stray_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=stray,limit=1] at @s run function arc_mob_base:mobs/stray/stray_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=stray,limit=1] at @s run function arc_mob_base:mobs/stray/stray_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=drowned,limit=1] at @s run function arc_mob_base:mobs/drowned/drowned
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=drowned,limit=1] at @s run function arc_mob_base:mobs/drowned/drowned_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=drowned,limit=1] at @s run function arc_mob_base:mobs/drowned/drowned_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=drowned,limit=1] at @s run function arc_mob_base:mobs/drowned/drowned_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=drowned,limit=1] at @s run function arc_mob_base:mobs/drowned/drowned_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=husk,limit=1] at @s run function arc_mob_base:mobs/husk/husk
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=husk,limit=1] at @s run function arc_mob_base:mobs/husk/husk_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=husk,limit=1] at @s run function arc_mob_base:mobs/husk/husk_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=husk,limit=1] at @s run function arc_mob_base:mobs/husk/husk_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=husk,limit=1] at @s run function arc_mob_base:mobs/husk/husk_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=spider,limit=1] at @s run function arc_mob_base:mobs/spider/spider
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=spider,limit=1] at @s run function arc_mob_base:mobs/spider/spider_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=spider,limit=1] at @s run function arc_mob_base:mobs/spider/spider_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=spider,limit=1] at @s run function arc_mob_base:mobs/spider/spider_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=spider,limit=1] at @s run function arc_mob_base:mobs/spider/spider_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=cave_spider,limit=1] at @s run function arc_mob_base:mobs/cave_spider/cave_spider
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=cave_spider,limit=1] at @s run function arc_mob_base:mobs/cave_spider/cave_spider_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=cave_spider,limit=1] at @s run function arc_mob_base:mobs/cave_spider/cave_spider_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=cave_spider,limit=1] at @s run function arc_mob_base:mobs/cave_spider/cave_spider_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=cave_spider,limit=1] at @s run function arc_mob_base:mobs/cave_spider/cave_spider_lightened

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=creeper,limit=1] at @s run function arc_mob_base:mobs/creeper/creeper
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=creeper,limit=1] at @s run function arc_mob_base:mobs/creeper/creeper_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=creeper,limit=1] at @s run function arc_mob_base:mobs/creeper/creeper_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=creeper,limit=1] at @s run function arc_mob_base:mobs/creeper/creeper_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=creeper,limit=1] at @s run function arc_mob_base:mobs/creeper/creeper_lightened

execute as @e[tag=!Check,type=elder_guardian,limit=1] at @s run function arc_mob_base:mobs/elder_guardian

execute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random
execute if score Random48 arc.Random matches ..43 run execute as @e[tag=!Check,type=guardian,limit=1] at @s run function arc_mob_base:mobs/guardian/guardian
execute if score Random48 arc.Random matches 44 run execute as @e[tag=!Check,type=guardian,limit=1] at @s run function arc_mob_base:mobs/guardian/guardian_armored
execute if score Random48 arc.Random matches 45 run execute as @e[tag=!Check,type=guardian,limit=1] at @s run function arc_mob_base:mobs/guardian/guardian_antimagic
execute if score Random48 arc.Random matches 46 run execute as @e[tag=!Check,type=guardian,limit=1] at @s run function arc_mob_base:mobs/guardian/guardian_poison
execute if score Random48 arc.Random matches 47 run execute as @e[tag=!Check,type=guardian,limit=1] at @s run function arc_mob_base:mobs/guardian/guardian_lightened
