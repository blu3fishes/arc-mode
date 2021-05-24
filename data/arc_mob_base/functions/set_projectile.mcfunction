# This Commands are set based on Only Prototype,
# If You Think about World Mode Generation, pls modify this command
execute as @e[type=arrow,tag=!arc_processed] run function arc_mob_base:arrow_process
exeucte as @a store result score @s arc.BowType run data get entity @s SelectedItem.tag.bow
execute as @e[type=skeleton] run scoreboard players set @s arc.BowType 1
execute as @e[type=skeleton] run scoreboard players set @s arc.BowType 2
# Bow Type = 1, 2 damage / Bow Type = 2, 4 damage

execute as @e[tag=two_damage,nbt={inGround:1b}] run function arc_mob_base:landed 
execute as @e[nbt={ActivePotionEffects:[{Id:27b,Amplifier:1b}]}] run function arc_mob_base:hit
execute as @e[tag=four_damage,nbt={inGround:1b}] run function arc_mob_base:landed 
execute as @e[nbt={ActivePotionEffects:[{Id:27b,Amplifier:2b}]}] run function arc_mob_base:hit