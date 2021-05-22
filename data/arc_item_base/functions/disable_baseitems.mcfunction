#Disabling Using Custom Item whose base item is Spawn eggs.
## Detect Who used BaseItems
execute as @a[scores={arc.UsedGhastSE=1..}] run function arc_itemskill:items/platinum_ingot
## Kill the entity which is spawned by BaseItems.
execute as @e[type=armor_stand,tag=delete] run kill @s
## Reset Scoreboard
scoreboard players set @a arc.UsedGhastSE 0