## manages all stats include hp
## restrict / unlock stat powers.
## calculate critical hit algorithm.

scoreboard objectives add stat_cdmg dummy
## critical rate, not chest crate
scoreboard objectives add stat_crate dummy
scoreboard objectives add stat_health dummy
scoreboard objectives add stat_armor dummy
scoreboard objectives add stat_dmg dummy
scoreboard objectives add stat_speed dummy

execute as @a run attribute @s generic.attack_damage modifier add ab0ab3c3-9222-4369-b028-e56bb2e8e48f "stat_handicap" -0.9 add
execute as @a run attribute @s generic.armor modifier add c7a79273-e471-43e7-b56c-7aed33a05b50 "stat_initdef" 1.4 add

scoreboard players set @a[scores={stat_cdmg=0}] stat_cdmg 0
scoreboard players set @a[scores={stat_crate=0}] stat_crate 0
scoreboard players set @a[scores={stat_health=0}] stat_health 0
scoreboard players set @a[scores={stat_armor=0}] stat_armor 0
scoreboard players set @a[scores={stat_dmg=0}] stat_dmg 0
scoreboard players set @a[scores={stat_speed=0}] stat_speed 0