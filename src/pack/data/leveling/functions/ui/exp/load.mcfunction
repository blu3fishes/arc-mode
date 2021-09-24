## sets fexp, nexp
## calculate full exp increasement.

scoreboard objectives remove exp_xp

scoreboard objectives add exp_fexp dummy
scoreboard objectives add exp_level dummy
scoreboard objectives add exp_nexp dummy
scoreboard objectives add exp_xp xp
scoreboard objectives add exp_lxp dummy
scoreboard objectives add exp_listener dummy
scoreboard objectives add exp_death deathCount

#scoreboard objectives add exp
scoreboard players set @a exp_lxp 0
scoreboard players set @a exp_death 0

scoreboard players set #8 exp_nexp 8
scoreboard players set #10 exp_nexp 10

scoreboard players add @a exp_level 0
scoreboard players set @a[scores={exp_level=0}] exp_level 1
scoreboard players add @a exp_fexp 0
scoreboard players set @a[scores={exp_level=1}] exp_fexp 1100
scoreboard players add @a exp_nexp 0