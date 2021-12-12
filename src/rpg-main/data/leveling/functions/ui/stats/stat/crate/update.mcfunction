## update 1 to 30

scoreboard players add @s stat_crate 1
scoreboard players operation @s stat_act_crate = @s stat_crate
scoreboard players operation @s stat_act_crate /= #2 stat_act_crate
scoreboard players remove @s stat_left 1
