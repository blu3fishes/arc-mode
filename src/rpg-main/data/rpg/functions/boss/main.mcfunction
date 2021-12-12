function rpg:boss/skeleton_king/check
tag @e[type=blaze,tag=King,predicate=rpg:boss/skeleton_king/riding] add passenger
tag @e[type=blaze,tag=King,predicate=!rpg:boss/skeleton_king/riding] remove passenger
execute as @e[type=blaze,tag=King] run kill @s[tag=!passenger]

execute at @a as @e[type=skeleton,tag=skeleton_king,sort=nearest,limit=1,distance=..40] run function rpg:boss/skeleton_king/bossbar
execute at @a unless entity @e[type=skeleton,tag=skeleton_king,sort=nearest,limit=1,distance=..40] run function rpg:boss/skeleton_king/bossbar_remove