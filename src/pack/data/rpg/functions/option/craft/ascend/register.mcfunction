## if the item is not the item that has any additional options.
execute at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.1 600
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.4 0
execute at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1.2 0

data modify entity @s Item.tag.display append value 'Lore:{[]}'
data modify entity @s Item.tag.class set value 1b
data modify entity @s Item.tag.display set value {Lore:['{"text":"✦ Common ▬▬▬","color":"dark_gray","bold":false,"italic":false}','{"text":"Option1","color":"gray","bold":false,"italic":false}','{"text":"Option2","color":"gray","bold":false,"italic":false}','{"text":"Option3","color":"gray","bold":false,"italic":false}','{"text":"▬▬▬▬▬▬▬▬▬▬▬▬","color":"gray","bold":false,"italic":false}']}
scoreboard players set #random option_random 100