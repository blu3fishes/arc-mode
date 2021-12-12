execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute as @s[scores={stat_left=1..,stat_health=..29}] run function leveling:ui/stats/stat/hp/update
function leveling:ui/ui/stat_book/show_stat
scoreboard players set @s stat_queryhealth 0
scoreboard players enable @s stat_queryhealth