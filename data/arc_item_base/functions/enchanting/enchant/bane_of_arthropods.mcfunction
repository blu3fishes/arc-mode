execute store result score .level arc.Enchant run data get entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
execute store result entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl short 1 run scoreboard players add .level arc.Enchant 1
execute at @s run particle witch ~ ~ ~ 0.2 0.2 0.2 0 300 force
execute at @s run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 1 1 0