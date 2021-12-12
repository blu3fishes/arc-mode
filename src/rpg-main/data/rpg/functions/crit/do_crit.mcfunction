execute store result score #dmg crit_rand run attribute @s generic.attack_damage get
## calculate critical damage here
scoreboard players operation #dmg crit_rand *= @s crit_dmg
execute as @e[tag=Hurt] run function rpg:crit/do_damage
execute at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 0.6
execute at @e[tag=Hurt] run particle minecraft:glow ~ ~0.4 ~ 0.4 0.8 0.4 0 10