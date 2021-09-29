## need maintenance! pls change the way of updating stats!
# execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]

execute as @a[scores={ui_openedbook=1..},nbt={Inventory:[{id:"minecraft:written_book",tag:{statbook:1b},Slot:8b}]}] run function leveling:ui/ui/stat_book/update
execute as @a[nbt=!{Inventory:[{id:"minecraft:written_book",tag:{statbook:1b},Slot:8b}]}] run function leveling:ui/ui/stat_book/change

scoreboard players set @a ui_openedbook 0