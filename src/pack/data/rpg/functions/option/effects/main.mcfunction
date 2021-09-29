## watch
execute store result score @s option_head1 run data get entity @s Inventory[{Slot:103b}].tag.first
execute store result score @s option_head2 run data get entity @s Inventory[{Slot:103b}].tag.second
execute store result score @s option_head3 run data get entity @s Inventory[{Slot:103b}].tag.third
execute store result score @s option_chest run data get entity @s Inventory[{Slot:102b}].tag.first
execute store result score @s option_chest run data get entity @s Inventory[{Slot:102b}].tag.second
execute store result score @s option_chest run data get entity @s Inventory[{Slot:102b}].tag.third
execute store result score @s option_legs1 run data get entity @s Inventory[{Slot:101b}].tag.first
execute store result score @s option_legs2 run data get entity @s Inventory[{Slot:101b}].tag.second
execute store result score @s option_legs3 run data get entity @s Inventory[{Slot:101b}].tag.third
execute store result score @s option_feet1 run data get entity @s Inventory[{Slot:100b}].tag.first
execute store result score @s option_feet2 run data get entity @s Inventory[{Slot:100b}].tag.second
execute store result score @s option_feet3 run data get entity @s Inventory[{Slot:100b}].tag.third
execute store result score @s option_main1 run data get entity @s SelectedItem.tag.first
execute store result score @s option_main2 run data get entity @s SelectedItem.tag.second
execute store result score @s option_main3 run data get entity @s SelectedItem.tag.third

execute unless score @s option_head1 = @s option_lhead1 run 
execute unless score @s option_head2 = @s option_lhead2 run 
execute unless score @s option_head3 = @s option_lhead3 run 
execute unless score @s option_chest1 = @s option_lchest1 run 
execute unless score @s option_chest2 = @s option_lchest2 run 
execute unless score @s option_chest3 = @s option_lchest3 run 
execute unless score @s option_legs1 = @s option_llegs1 run 
execute unless score @s option_legs2 = @s option_llegs2 run 
execute unless score @s option_legs3 = @s option_llegs3 run 
execute unless score @s option_feet1 = @s option_lfeet1 run 
execute unless score @s option_feet2 = @s option_lfeet2 run 
execute unless score @s option_feet3 = @s option_lfeet3 run 
execute unless score @s option_main1 = @s option_lmain1 run 
execute unless score @s option_main2 = @s option_lmain2 run 
execute unless score @s option_main3 = @s option_lmain3 run 