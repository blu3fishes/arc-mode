## sets fexp, nexp
## calculate full exp increasement.
scoreboard objectives add exp_fexp dummy
scoreboard objectives add exp_level dummy "Level"
scoreboard objectives add exp_nexp dummy
scoreboard objectives add exp_xp xp
scoreboard objectives add exp_lxp dummy
scoreboard objectives add exp_death deathCount

#scoreboard objectives add exp
scoreboard players add @a exp_lxp 0
scoreboard players set @a exp_death 0

scoreboard players set #2 exp_fexp 2
scoreboard players set #30 exp_fexp 30

scoreboard players set #8 exp_nexp 8
scoreboard players set #10 exp_nexp 10

scoreboard players add @a exp_level 0
scoreboard players set @a[scores={exp_level=0}] exp_level 1

scoreboard objectives setdisplay belowName exp_level

execute as @a run function leveling:ui/exp/set_fexp
scoreboard players add @a exp_nexp 0