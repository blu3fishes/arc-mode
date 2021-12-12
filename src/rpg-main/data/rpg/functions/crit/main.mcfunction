execute as @a run scoreboard players set @s crit_rate 0
execute as @a run scoreboard players operation @s crit_rate += @s stat_act_crate
execute as @a run scoreboard players operation @s crit_rate += @s opt_crate

execute as @a run scoreboard players set @s crit_dmg 50
execute as @a run scoreboard players operation @s crit_dmg += @s stat_cdmg
execute as @a run scoreboard players operation @s crit_dmg += @s opt_cdmg

execute as @a[scores={crit_dmggiven=1..}] run function rpg:crit/roll
## arrow crit 계산은 나중에