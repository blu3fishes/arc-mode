data modify storage twohand modified insert 0 from entity @s Inventory[{Slot:6b}]
data modify storage twohand modified[{Slot:6b}].Slot set value 0b
data modify storage twohand modified[{Slot:0b}].tag.Enchantments[{id:"minecraft:sweeping"}].lvl set value 9s
# data modify storage twohand modified[{Slot:0b}].tag.twohand set value 0b
setblock 0 0 16 shulker_box
data modify block 0 0 16 Items set from storage twohand modified
loot replace entity @s hotbar.6 1 mine 0 0 16

scoreboard players set @s arc.GreatSword 0

setblock 0 0 16 bedrock
data remove storage twohand modified

##########  z