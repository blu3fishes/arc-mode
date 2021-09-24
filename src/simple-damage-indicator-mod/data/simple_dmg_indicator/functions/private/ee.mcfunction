execute if score sdi sdi_d_static matches 0 run data merge entity @s {Motion:[0.0,0.325,0.0]}
data modify entity @s CustomName set from block ~ 255 ~ Text1
data merge entity @s {CustomNameVisible:1b}

execute if score sdi sdi_d_slowfall matches 1 run effect give @s minecraft:slow_falling 1000000 0 true