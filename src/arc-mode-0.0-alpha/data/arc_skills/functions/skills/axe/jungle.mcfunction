function arc_skills:skills/switch
execute at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 1.4 0
execute at @s run particle minecraft:dust 0.133 0.447 0.055 1 ~ ~ ~ 1 1 1 1 300 force
scoreboard players remove @s arc.Mana 125
effect give @s minecraft:resistance 7 0 true
effect give @s absorption 7 0 true
effect give @s haste 7 1 true
effect give @s speed 7 1 true
scoreboard players set @s arc.Jungle 140