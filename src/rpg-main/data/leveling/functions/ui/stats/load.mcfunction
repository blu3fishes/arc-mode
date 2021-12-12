## manages all stats include hp
## restrict / unlock stat powers.
## calculate critical hit algorithm.

scoreboard objectives add stat_cdmg dummy
## critical rate, not chest crate
scoreboard objectives add stat_crate dummy
scoreboard objectives add stat_health dummy
scoreboard objectives add stat_realHealth dummy
scoreboard objectives add stat_armor dummy
scoreboard objectives add stat_dmg dummy
scoreboard objectives add stat_speed dummy
scoreboard objectives add stat_act_crate dummy

scoreboard players set #2 stat_act_crate 2

scoreboard objectives add stat_querycdmg trigger
scoreboard objectives add stat_querycrate trigger
scoreboard objectives add stat_queryhealth trigger
scoreboard objectives add stat_queryarmor trigger
scoreboard objectives add stat_querydmg trigger
scoreboard objectives add stat_queryspeed trigger

scoreboard players enable @a stat_querycdmg
scoreboard players enable @a stat_querycrate
scoreboard players enable @a stat_queryhealth
scoreboard players enable @a stat_queryarmor
scoreboard players enable @a stat_querydmg
scoreboard players enable @a stat_queryspeed

scoreboard objectives add stat_left dummy

scoreboard players add @a stat_total 0
scoreboard players add @a stat_left 0
scoreboard players add @a stat_cdmg 0
scoreboard players add @a stat_crate 0
scoreboard players add @a stat_health 0
scoreboard players add @a stat_armor 0
scoreboard players add @a stat_dmg 0
scoreboard players add @a stat_speed 0