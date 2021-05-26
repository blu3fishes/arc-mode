tag @s remove iceright
execute store data merge entity @s Motion run data get entity @e[type=arrow,tag=ice_center,limit=1] Motion
data modify entity @s CustomPotionEffects append value {Id:27b,Amplifier:3b,Duration:100}
data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:2b,Duration:60}