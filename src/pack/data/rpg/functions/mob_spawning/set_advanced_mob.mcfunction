# add tag 'advcheck'
execute as @e[tag=NotAntiMagic,limit=1] run function rpg:mob_spawning/adv/set_antimagic
execute as @e[tag=NotArmor,limit=1] run function rpg:mob_spawning/adv/set_armor
execute as @e[tag=NotPoisoning,limit=1] run function rpg:mob_spawning/adv/set_poison
execute as @e[tag=NotLightened,limit=1] run function rpg:mob_spawning/adv/set_light