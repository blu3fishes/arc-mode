## need maintenance! pls change the way of updating stats!
# execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]

execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{statbook:1b},Slot:8b}]}] run function leveling:ui/ui/stat_book/update
execute as @a[nbt=!{Inventory:[{id:"minecraft:book",tag:{statbook:1b},Slot:8b}]}] run function leveling:ui/ui/stat_book/change

execute at @e[type=item,nbt={Item:{tag:{statbook:1b}}}] as @p run function leveling:ui/ui/stat_book/show_stat
kill @e[type=item,nbt={Item:{tag:{statbook:1b}}}]