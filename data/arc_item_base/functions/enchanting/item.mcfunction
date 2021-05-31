tag @s add drop_book
execute at @s if entity @e[type=item,distance=..0.5,limit=1] run function arc_item_base:enchanting/enchant/directory