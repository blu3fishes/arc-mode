# Scythe Weapons give Additional Damage with Magic.
# Platinum Scythe : give 1 level additional damage (6)
# Diamond Scythe : give 2 level additional damage (12)

# Platinum Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=120..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:701}}}] at @s run execute as @e[scores={arc.DmgTaken=1..},distance=..7] run scoreboard players set @s arc.ScytheAttack 13
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=120..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:701}}}] at @s run execute as @e[tag=Hurt,distance=..7] run scoreboard players set @s arc.ScytheAttack 13
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=120..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:701}}}] run scoreboard players remove @s arc.Mana 120

# Diamond Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=240..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:702}}}] at @s run execute as @e[scores={arc.DmgTaken=1..},distance=..7] run scoreboard players set @s arc.ScytheAttack 26
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=240..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:702}}}] at @s run execute as @e[tag=Hurt,distance=..7] run scoreboard players set @s arc.ScytheAttack 26
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=240..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{CustomModelData:702}}}] run scoreboard players remove @s arc.Mana 240

# Platinum Scythe Scoreboard Operations
scoreboard players remove @e[scores={arc.ScytheAttack=1..13}] arc.ScytheAttack 1
execute as @e[scores={arc.ScytheAttack=1}] run function arc_itemskill:skills/damage_lvl1
execute at @e[scores={arc.ScytheAttack=1}] run particle dust 0.286 0.318 0.38 1 ~ ~ ~ 0.7 0.7 0.7 7 1400 force

# Diamond Scythe Scoreboard Operations
scoreboard players remove @e[scores={arc.ScytheAttack=15..26}] arc.ScytheAttack 1
execute as @e[scores={arc.ScytheAttack=14}] run function arc_itemskill:skills/damage_lvl2
execute at @e[scores={arc.ScytheAttack=14}] run particle dust 0.141 0.373 0.388 1 ~ ~ ~ 0.7 0.7 0.7 7 1400 force
scoreboard players set @e[scores={arc.ScytheAttack=14}] arc.ScytheAttack 0