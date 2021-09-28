execute at @s run tag @e[distance=..10,nbt={HurtTime:10s}] add Hurt
function rpg:crit/get_random/get_random
## calculate critical rate here
scoreboard players set @s crit_rate 0
scoreboard players operation @s crit_rate += @s stat_act_crate
execute if score @s crit_rate >= #random crit_rand run function rpg:crit/do_crit
tag @e[tag=Hurt] remove Hurt
scoreboard players set @s crit_dmggiven 0