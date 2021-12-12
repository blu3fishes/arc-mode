execute at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.1 600
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.4 0
data modify entity @s Item.tag.display.Lore[0] set value '{"text":"✦✦ Uncommon ▬▬▬","color":"green","bold":false,"italic":false}'
data modify entity @s Item.tag.class set value 2b
scoreboard players set #random option_random 100