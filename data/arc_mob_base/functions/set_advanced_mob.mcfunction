# add tag 'advcheck'
execute as @e[tag=NotAntiMagic,limit=1] run function arc_mob_base:adv/set_antimagic
execute as @e[tag=NotArmor,limit=1] run function arc_mob_base:adv/set_armor
execute as @e[tag=NotPoisoning,limit=1] run function arc_mob_base:adv/set_poison
execute as @e[tag=NotLightened,limit=1] run function arc_mob_base:adv/set_light

execute at @e[tag=Poisoning] run execute as @a[distance=..7] run effect give @s minecraft:poison 3 2 false