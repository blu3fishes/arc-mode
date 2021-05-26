data modify entity @s CustomPotionEffects append value {Id:27b,Amplifier:3b,Duration:100}
data modify entity @s CustomPotionEffects append value {Id:2b,Amplifier:2b,Duration:60}
data modify entity @s Color set value 720895
tag @s add ice_center
tag @s add ice
summon arrow ^-0.3 ^ ^ {Tags:["ice","iceleft","arc_processed"],Color:720895}
summon arrow ^0.3 ^ ^ {Tags:["ice","iceright","arc_processed"],Color:720895}

execute at @s run execute as @e[type=arrow,tag=iceleft,limit=1,distance=..1] run function arc_skills:custom_ranged/load/ice_left
execute at @s run execute as @e[type=arrow,tag=iceright,limit=1,distance=..1] run function arc_skills:custom_ranged/load/ice_right
tag @s remove ice_center