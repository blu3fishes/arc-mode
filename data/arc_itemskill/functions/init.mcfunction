scoreboard objectives add arc.Mana dummy
bossbar add arc_mana "Mana"
bossbar set minecraft:arc_mana color blue
bossbar set minecraft:arc_mana max 400
bossbar set minecraft:arc_mana style notched_20
bossbar set minecraft:arc_mana visible true
bossbar set minecraft:arc_mana players @a
execute as @a run execute store result bossbar minecraft:arc_mana value run scoreboard players get @s arc.Mana
scoreboard players set @a arc.Mana 400

scoreboard objectives add arc.UsedGhastSE minecraft.used:ghast_spawn_egg
scoreboard players set @a arc.UsedGhastSE 0