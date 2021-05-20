# Manage Mob's Spawn Level.

execute if score level arc.MobMode matches 1 run function arc_mob_base:set_mob_1
execute if score level arc.MobMode matches 2 run function arc_mob_base:set_mob_2
execute if score level arc.MobMode matches 3 run function arc_mob_base:set_mob_3

# Manage Mob's Loot Table.

#execute if score level arc.MobMode matches 1 run function arc_mob_base:set_loot_1
#execute if score level arc.MobMode matches 2 run function arc_mob_base:set_loot_2
#execute if score level arc.MobMode matches 3 run function arc_mob_base:set_loot_3