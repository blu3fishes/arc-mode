# execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_shovel"}},distance=..1]
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:sharpness"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/sharpness
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:protection"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/protection
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:power"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/power
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:punch"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/punch
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/blast_protection
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:smite"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/smite
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fire_protection"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/fire_protection
execute if entity @s[nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods"}]}}}] as @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/bane_of_arthropods
kill @s