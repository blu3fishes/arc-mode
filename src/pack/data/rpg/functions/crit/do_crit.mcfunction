execute store result score #dmg crit_rand run attribute @s generic.attack_damage get
## calculate critical damage here
scoreboard players set @s crit_dmg 0
scoreboard players operation @s crit_dmg += @s stat_cdmg
scoreboard players operation #dmg crit_rand *= @s crit_dmg
execute as @e[tag=Hurt] run function rpg:crit/do_damage
execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1
execute at @s run playsound entity.player.attack.crit master @s ~ ~ ~ 1 1
execute at @e[tag=Hurt] run particle happy_villager ~ ~ ~ 0.7 0.7 0.7 0.7 30 force