function arc_skills:skills/switch
execute at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 1 1 0
scoreboard players remove @s arc.Mana 100
effect give @s minecraft:speed 1 4 true
effect give @s resistance 1 4 true
scoreboard players set @s arc.Hammer 14