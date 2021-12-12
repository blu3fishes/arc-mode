execute store result storage exp:decrease_xp xp int 0.8 run scoreboard players get @s exp_nexp
execute store result score @s exp_nexp run data get storage exp:decrease_xp xp
data remove storage exp:decrease_xp xp
scoreboard players set @s exp_death 0