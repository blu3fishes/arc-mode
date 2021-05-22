# Manage Mob's Spawn Level.
execute if entity @a[level=200..] run scoreboard players set @a arc.MobMode 3
execute if entity @a[level=200..] run scoreboard players set level arc.MobMode 3
execute unless entity @a[level=200..] run if entity @a[level=100..199,score={arc.MobMode=3}] run scoreboard players set @a arc.MobMode 2
execute unless entity @a[level=200..] run if entity @a[level=100..199,score={arc.MobMode=3}] run scoreboard players set level arc.MobMode 2
execute unless entity @a[level=100..] run scoreboard players set @a arc.MobMode 1
execute unless entity @a[level=100..] run scoreboard players set level arc.MobMode 1

execute if score level arc.MobMode matches 1 run function arc_mob_base:set_mob_1
execute if score level arc.MobMode matches 2 run function arc_mob_base:set_mob_2
execute if score level arc.MobMode matches 3 run function arc_mob_base:set_mob_3