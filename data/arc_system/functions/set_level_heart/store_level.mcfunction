#set_Level
execute as @a run function arc_system:set_level_heart/force_level

#set_Heart
execute as @a run attribute @s[level=..9] generic.max_health base set 14
execute as @a run attribute @s[level=10..59] generic.max_health base set 16
execute as @a run attribute @s[level=60..99] generic.max_health base set 18
execute as @a run attribute @s[level=100..139] generic.max_health base set 20
execute as @a run attribute @s[level=140..179] generic.max_health base set 22
execute as @a run attribute @s[level=180..] generic.max_health base set 24