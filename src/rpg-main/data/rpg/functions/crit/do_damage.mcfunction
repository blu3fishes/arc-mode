execute store result score @s crit_health run data get entity @s Health 100
scoreboard players operation @s crit_health -= #dmg crit_rand
execute at @s if score @s crit_health < #0 crit_health run loot spawn ~ ~ ~ kill @s
execute at @s if score @s crit_health < #0 crit_health run particle minecraft:glow ~ ~0.4 ~ 0.4 0.8 0.4 0 10
execute at @s if score @s crit_health < #0 crit_health run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 0.6
execute store result entity @s Health float 0.01 run scoreboard players get @s crit_health