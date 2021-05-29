execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{axe:3b}}]}] run function arc_skills:skills/axe/fury
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{axe:2b}}]}] run function arc_skills:skills/axe/fury
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{axe:1b}}]}] run function arc_skills:skills/axe/fury
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{axe:4b}}]}] run function arc_skills:skills/axe/fury
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:700008}}]}] run function arc_skills:skills/axe/platinum
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:700028}}]}] run function arc_skills:skills/axe/platinum
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:700018}}]}] run function arc_skills:skills/axe/jungle
execute as @a[scores={arc.Mana=100..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:700040}}]}] run function arc_skills:skills/axe/cryob
execute at @a[nbt={SelectedItem:{tag:{CustomModelData:700018}}}] run particle minecraft:mycelium ~ ~0.3 ~ 0.4 0.2 0.4 0.1 30 force
execute at @a[scores={arc.Jungle=1..,arc.DmgGiven=1..}] run function arc_skills:skills/axe/jungle_hit
scoreboard players remove @a[scores={arc.Jungle=1..}] arc.Jungle 1