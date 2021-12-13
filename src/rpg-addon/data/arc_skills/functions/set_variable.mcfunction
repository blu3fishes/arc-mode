# Mana Initialization.
scoreboard objectives add arc.Mana dummy
scoreboard players set @a arc.Mana 0
forceload add 0 0 0 0
forceload add 0 16 0 16

# Variables for Skills.
scoreboard objectives add arc.DmgTaken minecraft.custom:damage_taken
scoreboard objectives add arc.DmgGiven minecraft.custom:damage_dealt
scoreboard objectives add arc.Light dummy
scoreboard players set @a arc.Light 0
scoreboard objectives add arc.ScytheAttack dummy
scoreboard objectives add arc.UUID0 dummy
scoreboard objectives add arc.UUID1 dummy
scoreboard objectives add arc.UUID2 dummy
scoreboard objectives add arc.UUID3 dummy
scoreboard objectives add arc.BowType dummy
scoreboard objectives add arc.Skeletons dummy
scoreboard objectives add arc.Hammer dummy
scoreboard objectives add arc.GreatSword dummy
scoreboard objectives add arc.Jungle dummy
scoreboard objectives add arc.Ice dummy
scoreboard objectives add arc.CryobScy dummy

scoreboard players set #100 arc.BowType 100
scoreboard players set #poison arc.BowType 5