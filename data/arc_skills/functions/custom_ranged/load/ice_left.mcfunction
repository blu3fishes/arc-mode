tag @s remove iceleft
data modify entity @s CustomPotionEffects append value {Id:27b,Amplifier:3b,Duration:100}
data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:2b,Duration:60}
execute store result entity @s Motion[0] double 1.0 run data get entity @e[type=arrow,tag=ice_center,limit=1] Motion[0] 1.0
execute store result entity @s Motion[1] double 1.0 run data get entity @e[type=arrow,tag=ice_center,limit=1] Motion[1] 1.0
execute store result entity @s Motion[2] double 1.0 run data get entity @e[type=arrow,tag=ice_center,limit=1] Motion[2] 1.0
execute store result entity @s Rotation[0] float 1.0 run data get entity @e[type=arrow,tag=ice_center,limit=1] Rotation[0] 1.0
execute store result entity @s Rotation[1] float 1.0 run data get entity @e[type=arrow,tag=ice_center,limit=1] Rotation[1] 1.0