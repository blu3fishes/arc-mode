scoreboard objectives add arc.Level level
scoreboard objectives add arc.MaxLevel dummy
scoreboard objectives add arc.Heart dummy

execute as @a run execute store result score @s arc.Level run data get entity @s XpLevel
scoreboard players set @a arc.Heart 14