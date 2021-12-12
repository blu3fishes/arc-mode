# arc.MobMode is in arc_system:set_mode namespace.
#execute as @e[type=experience_bottle,tag=!Check] run function rpg:mob_spawning/bottle_1

# boss 1 elderguardian
execute at @e[type=elder_guardian] run effect give @a[distance=..4] weakness 3 1 true
execute at @e[type=elder_guardian] run effect give @a[distance=..4] poison 3 1 true

function rpg:boss/main