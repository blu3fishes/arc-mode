function arc_skills:skills/switch
execute at @s run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 1 1 0
execute at @s run particle minecraft:witch ~ ~ ~ 1 1 1 1 1400 force
scoreboard players remove @s arc.Mana 100
execute at @s run effect give @e[type=!player,distance=..7] levitation 1 2 true
effect give @s minecraft:resistance 7 0 true
effect give @s absorption 7 1 true
effect give @s haste 7 1 true
effect give @s speed 7 1 true