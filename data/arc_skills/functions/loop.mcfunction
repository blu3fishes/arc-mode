# Managing mana & its growth
execute as @a run execute store result bossbar minecraft:arc_mana value run scoreboard players get @s arc.Mana
bossbar set minecraft:arc_mana players @a
function arc_itemskill:skillandmana/managrowth

# tag undeads.
tag @e[type=drowned] add undead
tag @e[type=husk] add undead
tag @e[type=phantom] add undead
tag @e[type=skeleton] add undead
tag @e[type=skeleton_horse] add undead
tag @e[type=stray] add undead
tag @e[type=wither] add undead
tag @e[type=wither_skeleton] add undead
tag @e[type=zoglin] add undead
tag @e[type=zombie] add undead
tag @e[type=zombie_horse] add undead
tag @e[type=zombie_villager] add undead
tag @e[type=zombified_piglin] add undead
## detect hurted mobs
tag @e[tag=!Hurt,nbt={HurtTime:10s}] add Hurt

# main procedure which is skills, etc..
function arc_itemskill:skills/scythe_slash

# reset scoreboards.
scoreboard players set @e[scores={arc.DmgGiven=1..}] arc.DmgGiven 0
scoreboard players set @e[scores={arc.DmgTaken=1..}] arc.DmgTaken 0
## reset hurted mobs.
tag @e[tag=Hurt,nbt={HurtTime:9s}] remove Hurt