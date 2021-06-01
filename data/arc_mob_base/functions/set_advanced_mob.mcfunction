# add tag 'advcheck'
execute as @e[tag=NotAntiMagic,limit=1] run function arc_mob_base:adv/set_antimagic
execute as @e[tag=NotArmor,limit=1] run function arc_mob_base:adv/set_armor
execute as @e[tag=NotPoisoning,limit=1] run function arc_mob_base:adv/set_poison
execute as @e[tag=NotLightened,limit=1] run function arc_mob_base:adv/set_light

execute at @e[tag=Poisoning] run effect give @a[distance=..5] minecraft:poison 2 1 false