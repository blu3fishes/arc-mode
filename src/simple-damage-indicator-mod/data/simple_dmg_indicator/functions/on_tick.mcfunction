#this function is triggered by #minecraft:tick.
execute as @e[type=!item,type=!minecraft:experience_orb,tag=!sdi_d,tag=!sdi_ignore] at @s run function simple_dmg_indicator:on_tick/aa
execute as @e[tag=sdi_d_init] run function simple_dmg_indicator:on_tick/cc
execute as @e[tag=sdi_d] run function simple_dmg_indicator:on_tick/bb