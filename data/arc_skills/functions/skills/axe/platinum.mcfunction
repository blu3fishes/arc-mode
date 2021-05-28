function arc_skills:skills/switch
execute at @s run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 1 1 0
execute at @s run particle minecraft:flame ~ ~ ~ 1 1 1 1 1400 force
scoreboard players remove @s arc.Mana 100
effect give @s minecraft:resistance 10 0 true
effect give @s absorption 10 0 true
effect give @s haste 10 1 true
effect give @s speed 10 1 true