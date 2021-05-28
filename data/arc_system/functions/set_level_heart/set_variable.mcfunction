scoreboard objectives add arc.Level level
scoreboard objectives add arc.MaxLevel dummy
scoreboard objectives add arc.Heart dummy
scoreboard objectives add arc.MaxHeart dummy
scoreboard objectives add arc.Heart_p dummy

execute as @a run execute store result score @s arc.Level run data get entity @s XpLevel
scoreboard players set @a arc.Heart 14
execute as @a run execute store result score @s arc.MaxLevel run data get entity @s XpLevel