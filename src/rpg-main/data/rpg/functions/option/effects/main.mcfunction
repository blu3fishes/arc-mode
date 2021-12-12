## watch
execute store result score @s option_head1 run data get entity @s Inventory[{Slot:103b}].tag.first
execute store result score @s option_head2 run data get entity @s Inventory[{Slot:103b}].tag.second
execute store result score @s option_head3 run data get entity @s Inventory[{Slot:103b}].tag.third
execute store result score @s option_chest1 run data get entity @s Inventory[{Slot:102b}].tag.first
execute store result score @s option_chest2 run data get entity @s Inventory[{Slot:102b}].tag.second
execute store result score @s option_chest3 run data get entity @s Inventory[{Slot:102b}].tag.third
execute store result score @s option_legs1 run data get entity @s Inventory[{Slot:101b}].tag.first
execute store result score @s option_legs2 run data get entity @s Inventory[{Slot:101b}].tag.second
execute store result score @s option_legs3 run data get entity @s Inventory[{Slot:101b}].tag.third
execute store result score @s option_feet1 run data get entity @s Inventory[{Slot:100b}].tag.first
execute store result score @s option_feet2 run data get entity @s Inventory[{Slot:100b}].tag.second
execute store result score @s option_feet3 run data get entity @s Inventory[{Slot:100b}].tag.third
execute store result score @s option_main1 run data get entity @s SelectedItem.tag.first
execute store result score @s option_main2 run data get entity @s SelectedItem.tag.second
execute store result score @s option_main3 run data get entity @s SelectedItem.tag.third

## 효과 부여

function rpg:option/effects/effect/head/first/set
function rpg:option/effects/effect/head/second/set
function rpg:option/effects/effect/head/third/set
function rpg:option/effects/effect/chest/first/set
function rpg:option/effects/effect/chest/second/set
function rpg:option/effects/effect/chest/third/set
function rpg:option/effects/effect/legs/first/set
function rpg:option/effects/effect/legs/second/set
function rpg:option/effects/effect/legs/third/set
function rpg:option/effects/effect/feet/first/set
function rpg:option/effects/effect/feet/second/set
function rpg:option/effects/effect/feet/third/set
function rpg:option/effects/effect/main/first/set
function rpg:option/effects/effect/main/second/set
function rpg:option/effects/effect/main/third/set

## rate, dmg 계산
scoreboard players set @s opt_crate 0
scoreboard players operation @s opt_crate += @s opt_hd1_crate
scoreboard players operation @s opt_crate += @s opt_hd2_crate
scoreboard players operation @s opt_crate += @s opt_hd3_crate
scoreboard players operation @s opt_crate += @s opt_chst1_crate
scoreboard players operation @s opt_crate += @s opt_chst2_crate
scoreboard players operation @s opt_crate += @s opt_chst3_crate
scoreboard players operation @s opt_crate += @s opt_lgs1_crate
scoreboard players operation @s opt_crate += @s opt_lgs2_crate
scoreboard players operation @s opt_crate += @s opt_lgs3_crate
scoreboard players operation @s opt_crate += @s opt_ft1_crate
scoreboard players operation @s opt_crate += @s opt_ft2_crate
scoreboard players operation @s opt_crate += @s opt_ft3_crate
scoreboard players operation @s opt_crate += @s opt_m1_crate
scoreboard players operation @s opt_crate += @s opt_m2_crate
scoreboard players operation @s opt_crate += @s opt_m3_crate

scoreboard players set @s opt_cdmg 0
scoreboard players operation @s opt_cdmg += @s opt_hd1_cdmg
scoreboard players operation @s opt_cdmg += @s opt_hd2_cdmg
scoreboard players operation @s opt_cdmg += @s opt_hd3_cdmg
scoreboard players operation @s opt_cdmg += @s opt_chst1_cdmg
scoreboard players operation @s opt_cdmg += @s opt_chst2_cdmg
scoreboard players operation @s opt_cdmg += @s opt_chst3_cdmg
scoreboard players operation @s opt_cdmg += @s opt_lgs1_cdmg
scoreboard players operation @s opt_cdmg += @s opt_lgs2_cdmg
scoreboard players operation @s opt_cdmg += @s opt_lgs3_cdmg
scoreboard players operation @s opt_cdmg += @s opt_ft1_cdmg
scoreboard players operation @s opt_cdmg += @s opt_ft2_cdmg
scoreboard players operation @s opt_cdmg += @s opt_ft3_cdmg
scoreboard players operation @s opt_cdmg += @s opt_m1_cdmg
scoreboard players operation @s opt_cdmg += @s opt_m2_cdmg
scoreboard players operation @s opt_cdmg += @s opt_m3_cdmg

## reset 함수 실행
execute unless score @s option_head1 = @s option_lhead1 run function rpg:option/effects/effect/head/first/reset
execute unless score @s option_head2 = @s option_lhead2 run function rpg:option/effects/effect/head/second/reset
execute unless score @s option_head3 = @s option_lhead3 run function rpg:option/effects/effect/head/third/reset
execute unless score @s option_chest1 = @s option_lchest1 run function rpg:option/effects/effect/chest/first/reset
execute unless score @s option_chest2 = @s option_lchest2 run function rpg:option/effects/effect/chest/second/reset
execute unless score @s option_chest3 = @s option_lchest3 run function rpg:option/effects/effect/chest/third/reset
execute unless score @s option_legs1 = @s option_llegs1 run function rpg:option/effects/effect/legs/first/reset
execute unless score @s option_legs2 = @s option_llegs2 run function rpg:option/effects/effect/legs/second/reset
execute unless score @s option_legs3 = @s option_llegs3 run function rpg:option/effects/effect/legs/third/reset
execute unless score @s option_feet1 = @s option_lfeet1 run function rpg:option/effects/effect/feet/first/reset
execute unless score @s option_feet2 = @s option_lfeet2 run function rpg:option/effects/effect/feet/second/reset
execute unless score @s option_feet3 = @s option_lfeet3 run function rpg:option/effects/effect/feet/third/reset
execute unless score @s option_main1 = @s option_lmain1 run function rpg:option/effects/effect/main/first/reset
execute unless score @s option_main2 = @s option_lmain2 run function rpg:option/effects/effect/main/second/reset
execute unless score @s option_main3 = @s option_lmain3 run function rpg:option/effects/effect/main/third/reset