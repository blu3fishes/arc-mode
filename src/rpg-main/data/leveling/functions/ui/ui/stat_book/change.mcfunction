data modify storage leveling:statbook Item set from entity @s Inventory[{Slot:8b}]

clear @s book{statbook:1b}

item replace entity @s hotbar.8 with book{statbook:1b}
item modify entity @s hotbar.8 leveling:statbook

execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:stone_button",Count:1b,tag:{reset:1b}},PickupDelay:1}

execute as @e[type=item,nbt={Item:{tag:{reset:1b}}},limit=1,sort=nearest] run data modify entity @s Item set from storage leveling:statbook Item
kill @e[type=item,nbt={Item:{tag:{reset:1b}}}]
data remove storage leveling:statbook Item