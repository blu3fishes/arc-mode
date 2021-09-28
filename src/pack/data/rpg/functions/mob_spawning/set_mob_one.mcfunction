function rpg:mob_spawning/set_advanced_mob

## Automated Commands Below Here.
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=zombie,limit=1] run function rpg:mob_spawning/mobs/zombie/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=drowned,limit=1] run function rpg:mob_spawning/mobs/drowned/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=husk,limit=1] run function rpg:mob_spawning/mobs/husk/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=skeleton,limit=1] run function rpg:mob_spawning/mobs/skeleton/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=stray,limit=1] run function rpg:mob_spawning/mobs/stray/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=cave_spider,limit=1] run function rpg:mob_spawning/mobs/cave_spider/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=spider,limit=1] run function rpg:mob_spawning/mobs/spider/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=creeper,limit=1] run function rpg:mob_spawning/mobs/creeper/process
execute at @a[sort=arbitrary,limit=1] run function rpg:mob_spawning/get_random/get_random
execute as @e[tag=!Check,type=guardian,limit=1] run function rpg:mob_spawning/mobs/guardian/process

execute as @e[tag=!Check,type=elder_guardian,limit=1] at @s run function rpg:mob_spawning/mobs/elder_guardian

execute at @e[tag=Poisoning] run effect give @a[distance=..4] minecraft:poison 5 0 false
execute at @e[tag=Poisoning] run effect give @a[distance=..4] minecraft:nausea 5 0 false