execute store result score @s crit_health run data get entity @s Health 100
scoreboard players operation @s crit_health -= #dmg crit_rand
execute at @s if score @s crit_health < #0 crit_health run loot spawn ~ ~ ~ kill @s
execute at @s if score @s crit_health < #0 crit_health run particle happy_villager ~ ~ ~ 0.7 0.7 0.7 0.7 30 force
execute store result entity @s Health float 0.01 run scoreboard players get @s crit_health