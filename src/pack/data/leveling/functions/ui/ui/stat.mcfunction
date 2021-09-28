tellraw @s "앙기모띠!"
execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1
scoreboard players set @s stat 0