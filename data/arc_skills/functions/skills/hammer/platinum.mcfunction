function arc_skills:skills/switch
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 0
scoreboard players remove @s arc.Mana 100
effect give @s minecraft:speed 1 6 true
effect give @s resistance 1 4 true
scoreboard players set @s arc.Hammer 20