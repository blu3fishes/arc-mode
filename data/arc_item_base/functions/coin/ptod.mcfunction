execute as @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{CustomModelData:700011}}}] run kill @s
execute at @s run playsound block.anvil.use master @a ~ ~ ~ 1 1 0
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
kill @s