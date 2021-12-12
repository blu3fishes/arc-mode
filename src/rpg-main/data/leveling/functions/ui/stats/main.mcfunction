## only implements stat effect

execute as @a run attribute @s generic.attack_damage modifier add ab0ab3c3-9222-4369-b028-e56bb2e8e48f "stat_handicap" -0.9 add
execute as @a run attribute @s generic.armor modifier add c7a79273-e471-43e7-b56c-7aed33a05b50 "stat_initdef" 1.4 add
execute as @a run attribute @s generic.max_health modifier add ff547454-ac8a-4f7c-b548-9707b95a8fdf "stat_inithealth" -8.52 add

execute as @a store result score @s stat_realHealth run data get entity @s Health 100
execute as @a if score @s stat_realHealth > @s ui_health run effect give @s wither 2 0 true

execute as @a run function leveling:ui/stats/stat/def/effect
execute as @a run function leveling:ui/stats/stat/dmg/effect
execute as @a run function leveling:ui/stats/stat/hp/effect
execute as @a run function leveling:ui/stats/stat/speed/effect

execute as @a[scores={stat_querycdmg=1..}] run function leveling:ui/stats/stat/cdmg/click
execute as @a[scores={stat_querycrate=1..}] run function leveling:ui/stats/stat/crate/click
execute as @a[scores={stat_queryhealth=1..}] run function leveling:ui/stats/stat/hp/click
execute as @a[scores={stat_queryarmor=1..}] run function leveling:ui/stats/stat/def/click
execute as @a[scores={stat_querydmg=1..}] run function leveling:ui/stats/stat/dmg/click
execute as @a[scores={stat_queryspeed=1..}] run function leveling:ui/stats/stat/speed/click