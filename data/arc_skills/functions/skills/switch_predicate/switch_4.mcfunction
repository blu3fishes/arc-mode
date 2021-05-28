data modify storage switch toOffhand insert 0 from entity @s Inventory[{Slot:4b}]
data modify storage switch toOffhand[{Slot:4b}].Slot set value 0b
setblock 0 0 0 shulker_box
data modify block 0 0 0 Items set from storage switch toMainhand
loot replace entity @s hotbar.4 1 mine 0 0 0
setblock 0 0 0 shulker_box
data modify block 0 0 0 Items set from storage switch toOffhand
loot replace entity @s weapon.offhand 1 mine 0 0 0

setblock 0 0 0 bedrock
data remove storage switch toOffhand
data remove storage switch toMainhand