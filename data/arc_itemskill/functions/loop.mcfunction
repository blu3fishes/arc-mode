execute as @a run execute store result bossbar minecraft:arc_mana value run scoreboard players get @s arc.Mana
bossbar set minecraft:arc_mana players @a
function arc_itemskill:skillandmana/managrowth


#Disabling Using Custom Item whose base item is Spawn eggs.
execute as @a[scores={arc.UsedGhastSE=1..}] run function arc_itemskill:items/platinum_ingot
execute as @e[type=armor_stand,tag=delete] run kill @s
scoreboard players set @a arc.UsedGhastSE 0