scoreboard players operation #temp exp_nexp += @s exp_xp
scoreboard players operation #temp exp_nexp -= @s exp_lxp
scoreboard players operation @s exp_nexp += #temp exp_nexp
scoreboard players operation @s exp_lxp = @s exp_xp
scoreboard players reset #temp exp_nexp