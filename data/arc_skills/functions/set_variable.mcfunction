# Mana Initialization.
scoreboard objectives add arc.Mana dummy
bossbar add arc_mana "Mana"
bossbar set minecraft:arc_mana color blue
bossbar set minecraft:arc_mana max 2000
bossbar set minecraft:arc_mana style notched_20
bossbar set minecraft:arc_mana visible true
bossbar set minecraft:arc_mana players @a
execute as @a run execute store result bossbar minecraft:arc_mana value run scoreboard players get @s arc.Mana
scoreboard players set @a arc.Mana 0

# Variables for Skills.
scoreboard objectives add arc.DmgTaken minecraft.custom:damage_taken
scoreboard objectives add arc.DmgGiven minecraft.custom:damage_dealt
scoreboard objectives add arc.ScytheAttack dummy
scoreboard objectives add arc.UUID0 dummy
scoreboard objectives add arc.UUID1 dummy
scoreboard objectives add arc.UUID2 dummy
scoreboard objectives add arc.UUID3 dummy
scoreboard objectives add arc.BowType dummy