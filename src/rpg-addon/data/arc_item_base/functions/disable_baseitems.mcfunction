#Disabling Using Custom Item whose base item is Spawn eggs.
## Detect Who used BaseItems
execute as @a[scores={arc.UsedGhastSE=1..}] run function arc_item_base:give_items/platinum/platinum_ingot
execute as @a[scores={arc.UsedPandaSE=1..}] run give @s panda_spawn_egg{display:{Name:'{"text":"Core Of Obsidians","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"core of overworld...","color":"gray","bold":false,"italic":false}']},CustomModelData:700052,custom:1b,EntityTag:{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["delete"]}}
execute as @a[scores={arc.UsedBlazeSE=1..}] run give @s blaze_spawn_egg{display:{Name:'{"text":"Eye Of Elder Guardian","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"core of Oceans...","color":"gray","bold":false,"italic":false}']},CustomModelData:700053,custom:1b,EntityTag:{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["delete"]}}
execute as @a[scores={arc.UsedCatSE=1..}] run give @s cat_spawn_egg{display:{Name:'{"text":"Eye Of Guardians","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"core of guardians...","color":"gray","bold":false,"italic":false}']},CustomModelData:700053,custom:1b,EntityTag:{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["delete"]}}
execute as @a[scores={arc.UsedEvokerSE=1..}] run function arc_item_base:give_items/darkknight/darksteel
## Kill the entity which is spawned by BaseItems.
execute as @e[type=armor_stand,tag=delete] run kill @s
## Reset Scoreboard
scoreboard players set @a arc.UsedGhastSE 0
scoreboard players set @a arc.UsedPandaSE 0
scoreboard players set @a arc.UsedBlazeSE 0
scoreboard players set @a arc.UsedCatSE 0
scoreboard players set @a arc.UsedEvokerSE 0