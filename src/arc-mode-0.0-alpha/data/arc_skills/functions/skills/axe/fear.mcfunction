function arc_skills:skills/switch
execute at @s run effect give @e[type=!player] weakness 7 0 true
execute at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1.4 0
execute at @s run particle minecraft:dust 1 0 0 5 ~ ~0.4 ~ 3 0.4 3 0 100 force
scoreboard players remove @s arc.Mana 125
effect give @s minecraft:resistance 7 0 true
effect give @s absorption 7 0 true
effect give @s haste 7 1 true
effect give @s speed 7 1 true