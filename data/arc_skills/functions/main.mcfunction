# Managing mana & its growth
execute as @a run execute store result bossbar minecraft:arc_mana value run scoreboard players get @s arc.Mana
bossbar set minecraft:arc_mana players @a

# function arc_itemskill:skillandmana/managrowth // Only If offhand weapon exists.
scoreboard players add @a[scores={arc.Mana=..1993},nbt={Inventory:[{id:"minecraft:book",Slot:-106b,tag:{magic_book:1b}}]}] arc.Mana 7
scoreboard players add @a[scores={arc.Mana=..1999}] arc.Mana 1

# tag undeads.
tag @e[type=drowned,limit=1] add undead
tag @e[type=husk,limit=1] add undead
tag @e[type=phantom,limit=1] add undead
tag @e[type=skeleton,limit=1] add undead
tag @e[type=skeleton_horse,limit=1] add undead
tag @e[type=stray,limit=1] add undead
tag @e[type=wither,limit=1] add undead
tag @e[type=wither_skeleton,limit=1] add undead
tag @e[type=zoglin,limit=1] add undead
tag @e[type=zombie,limit=1] add undead
tag @e[type=zombie_horse,limit=1] add undead
tag @e[type=zombie_villager,limit=1] add undead
tag @e[type=zombified_piglin,limit=1] add undead
## detect hurted mobs
tag @e[tag=!Hurt,nbt={HurtTime:10s}] add Hurt

# main procedure which is skills, etc..
function arc_skills:skills/scythe/directory
function arc_skills:skills/hammer/directory
function arc_skills:skills/twohand/directory
function arc_skills:skills/axe/directory

# reset scoreboards.
scoreboard players set @e[scores={arc.DmgGiven=1..},limit=1] arc.DmgGiven 0
scoreboard players set @e[scores={arc.DmgTaken=1..},limit=1] arc.DmgTaken 0
## reset hurted mobs.
tag @e[tag=Hurt,nbt={HurtTime:9s}] remove Hurt