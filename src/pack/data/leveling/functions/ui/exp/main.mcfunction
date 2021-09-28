execute as @a if score @s exp_lxp < @s exp_xp run function leveling:ui/exp/gain_xp

execute as @a[scores={exp_level=..29}] run execute if score @s exp_fexp <= @s exp_nexp run function leveling:ui/exp/up

execute as @a[scores={exp_death=1..}] run function leveling:ui/exp/death