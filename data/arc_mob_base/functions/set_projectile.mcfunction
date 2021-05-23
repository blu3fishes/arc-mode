# This Commands are set based on Only Prototype,
# If You Think about World Mode Generation, pls modify this command
execute at @e[type=skeleton] run execute as @e[type=arrow,distance=1..] run tag @s add Shot
execute at @e[type=skeleton,limit=1] run execute as @e[type=arrow,tag=!Shot,distance=..1,sort=nearest,limit=1] run data modify entity @s CustomPotionEffects set value [{Id:27b,Amplifier:11b,Duration:60}]
execute as @e[nbt={ActiveEffects:[{Id:27b,Amplifier:11b}]}] run function arc_mob_base:custom_damage/two_damage
execute at @e[type=stray] run execute as @e[type=arrow,distance=1..] run tag @s add Shot
execute at @e[type=stray,limit=1] run execute as @e[type=arrow,tag=!Shot,distance=..1,sort=nearest,limit=1] run data modify entity @s CustomPotionEffects set value [{Id:27b,Amplifier:11b,Duration:60}]
execute as @e[nbt={ActiveEffects:[{Id:27b,Amplifier:11b}]}] run function arc_mob_base:custom_damage/four_damage
execute as @e[type=arrow,nbt={inGround:1b,CustomPotionEffects:[{Id:27b}]}] run data remove entity @s CustomPotionEffects