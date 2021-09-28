execute as @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run kill @s
execute at @s run playsound block.anvil.use master @a ~ ~ ~ 1 1 0
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Platinum Ingot","bold":false,"italic":false}'},CustomModelData:700011,custom:1b,EntityTag:{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["delete"]}}}}
kill @s