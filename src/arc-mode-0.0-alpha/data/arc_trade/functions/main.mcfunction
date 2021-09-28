# lvl 1 : not traded yet.
# lvl 2 : ...
execute as @e[type=villager,tag=!toolsmith_lvl1,nbt={VillagerData:{profession:"minecraft:toolsmith"}}] at @s run function arc_trade:traders/toolsmith_lvl1
# execute as @e[type=villager,tag=!check,nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] at @s run function arc_trade:traders/weaponsmith
# execute as @e[type=villager,tag=!check,nbt={VillagerData:{profession:"minecraft:armorer"}}] at @s run function arc_trade:traders/armorer
execute as @e[type=villager,tag=toolsmith_lvl1,nbt=!{VillagerData:{profession:"minecraft:toolsmith"}}] at @s run function arc_trade:reset
execute as @e[type=zombie_villager] at @s run function arc_trade:reset