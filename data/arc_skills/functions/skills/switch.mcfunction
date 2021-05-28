# Reset : Selected Items.
# Use Data Storage. https://www.youtube.com/watch?v=-uOd5mCqIJ4
# data modify storage test Inventory insert 0 from entity @p Inventory[]
# can save specific NBT data from String.
# can we just save only 'one' item data about specific slot?
# here it is. " data modify storage test Inventory insert 0 from entity @p Inventory[{Slot:-106b}].Slot it searches about '{Slot:-106b}' and we can go into the further elements.
# and we can set value : data modify storage test Inventory[{Slot:-106b}].Slot set value 26b
# So.. We can Switch Two Items.
# 1. data modify storage switch Inventory insert 0 from entity @s Inventory[{Slot:-106b}]
# 2. execute if entity @s[nbt={SelectedItemSlot:0b}] run function -> data modify entity @s[nbt={SelectedItemSlot:0}] Inventory[{Slot:0b}] set from storage switch Inventory[0]
# 3. execute if entity @s[nbt={SelectedItemSlot:1b}] run function -> data modify entity @s[nbt={SelectedItemSlot:1b}] Inventory[{Slot:1b}] set from storage switch Inventory[0]

# 2-1 (4) . In the function, 
# 4-1. data modify storage switch SelectedItem insert 0 from entity @s Inventory[{Slot:0b}]
# 4-2. data modify entity @s Inventory[{Slot:0b}] set from storage switch Inventory[0]
# 4-3. data modify entity @s Inventory[{Slot:-106b}] set from storage switch SelectedItem[0]

# 5. That's the end!
# data remove storage test Inventory
# data storage Hammer Inventory 

data modify storage switch toMainhand insert 0 from entity @s Inventory[{Slot:-106b}]
data modify storage switch toMainhand[{Slot:-106b}].Slot set value 0b
execute if entity @s[nbt={SelectedItemSlot:0}] run function arc_skills:skills/switch_predicate/switch_0
execute if entity @s[nbt={SelectedItemSlot:1}] run function arc_skills:skills/switch_predicate/switch_1
execute if entity @s[nbt={SelectedItemSlot:2}] run function arc_skills:skills/switch_predicate/switch_2
execute if entity @s[nbt={SelectedItemSlot:3}] run function arc_skills:skills/switch_predicate/switch_3
execute if entity @s[nbt={SelectedItemSlot:4}] run function arc_skills:skills/switch_predicate/switch_4
execute if entity @s[nbt={SelectedItemSlot:5}] run function arc_skills:skills/switch_predicate/switch_5
execute if entity @s[nbt={SelectedItemSlot:6}] run function arc_skills:skills/switch_predicate/switch_6
execute if entity @s[nbt={SelectedItemSlot:7}] run function arc_skills:skills/switch_predicate/switch_7
execute if entity @s[nbt={SelectedItemSlot:8}] run function arc_skills:skills/switch_predicate/switch_8