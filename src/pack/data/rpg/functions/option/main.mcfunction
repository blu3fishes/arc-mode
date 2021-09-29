## craft / Get Lore / Prepend Lore 1 , 2 , 3 if not 

## directory.

execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run tag @s add emerald_block
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run function rpg:option/as_main
# function rpg:option/effects/main
execute as @a run function rpg:option/effects/main