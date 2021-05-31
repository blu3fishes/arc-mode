# Manage Mob's Spawn Level.
# toggle this?
gamerule keepInventory true
execute if entity @a[level=200..] run scoreboard players set @a arc.MobMode 3
execute if entity @a[level=100..199] run scoreboard players set @a arc.MobMode 2
execute if entity @a[level=..99] run scoreboard players set @a arc.MobMode 1
execute if entity @a[scores={arc.MobMode=3}] run scoreboard players set level arc.MobMode 3
execute unless entity @a[scores={arc.MobMode=3}] run execute if entity @a[scores={arc.MobMode=2}] run scoreboard players set level arc.MobMode 2
execute unless entity @a[scores={arc.MobMode=2..3}] run scoreboard players set level arc.MobMode 1

execute if score level arc.MobMode matches 1 run function arc_mob_base:set_mob_1
execute if score level arc.MobMode matches 2 run function arc_mob_base:set_mob_2
execute if score level arc.MobMode matches 3 run function arc_mob_base:set_mob_3