function arc_skills:skills/switch
execute at @s run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 1 1 0
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 0.4 1 2 300 force
scoreboard players remove @s arc.Mana 125
effect give @s absorption 3 0 true
effect give @s haste 3 1 true
effect give @s speed 3 1 true