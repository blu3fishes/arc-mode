scoreboard objectives add option_class dummy

scoreboard objectives add option_random dummy
## ascending percentage (3.333%)
scoreboard players set #5 option_random 5
scoreboard players set #10 option_random 10
scoreboard players set #15 option_random 15
scoreboard players set #20 option_random 20
scoreboard players set #25 option_random 25
## common

## 플레이어의 현재 태그 값을 저장하는 스코어보드
scoreboard objectives add option_head1 dummy
scoreboard objectives add option_head2 dummy
scoreboard objectives add option_head3 dummy
scoreboard objectives add option_chest1 dummy
scoreboard objectives add option_chest2 dummy
scoreboard objectives add option_chest3 dummy
scoreboard objectives add option_legs1 dummy
scoreboard objectives add option_legs2 dummy
scoreboard objectives add option_legs3 dummy
scoreboard objectives add option_feet1 dummy
scoreboard objectives add option_feet2 dummy
scoreboard objectives add option_feet3 dummy
scoreboard objectives add option_main1 dummy
scoreboard objectives add option_main2 dummy
scoreboard objectives add option_main3 dummy
scoreboard objectives add option_off1 dummy
scoreboard objectives add option_off2 dummy
scoreboard objectives add option_off3 dummy

scoreboard players add @a option_head1 0
scoreboard players add @a option_head2 0
scoreboard players add @a option_head3 0
scoreboard players add @a option_chest1 0
scoreboard players add @a option_chest2 0
scoreboard players add @a option_chest3 0
scoreboard players add @a option_legs1 0
scoreboard players add @a option_legs2 0
scoreboard players add @a option_legs3 0
scoreboard players add @a option_feet1 0
scoreboard players add @a option_feet2 0
scoreboard players add @a option_feet3 0
scoreboard players add @a option_main1 0
scoreboard players add @a option_main2 0
scoreboard players add @a option_main3 0
scoreboard players add @a option_off1 0
scoreboard players add @a option_off2 0
scoreboard players add @a option_off3 0

## 플레이어의 이전 값을 저장하는 스코어보드
scoreboard objectives add option_lhead1 dummy
scoreboard objectives add option_lhead2 dummy
scoreboard objectives add option_lhead3 dummy
scoreboard objectives add option_lchest1 dummy
scoreboard objectives add option_lchest2 dummy
scoreboard objectives add option_lchest3 dummy
scoreboard objectives add option_llegs1 dummy
scoreboard objectives add option_llegs2 dummy
scoreboard objectives add option_llegs3 dummy
scoreboard objectives add option_lfeet1 dummy
scoreboard objectives add option_lfeet2 dummy
scoreboard objectives add option_lfeet3 dummy
scoreboard objectives add option_lmain1 dummy
scoreboard objectives add option_lmain2 dummy
scoreboard objectives add option_lmain3 dummy
scoreboard objectives add option_loff1 dummy
scoreboard objectives add option_loff2 dummy
scoreboard objectives add option_loff3 dummy

scoreboard players add @a option_lhead1 0
scoreboard players add @a option_lhead2 0
scoreboard players add @a option_lhead3 0
scoreboard players add @a option_lchest1 0
scoreboard players add @a option_lchest2 0
scoreboard players add @a option_lchest3 0
scoreboard players add @a option_llegs1 0
scoreboard players add @a option_llegs2 0
scoreboard players add @a option_llegs3 0
scoreboard players add @a option_lfeet1 0
scoreboard players add @a option_lfeet2 0
scoreboard players add @a option_lfeet3 0
scoreboard players add @a option_lmain1 0
scoreboard players add @a option_lmain2 0
scoreboard players add @a option_lmain3 0
scoreboard players add @a option_loff1 0
scoreboard players add @a option_loff2 0
scoreboard players add @a option_loff3 0

## 플레이어의 크확과 크뎀을 저장하는 변수

scoreboard objectives add opt_crate dummy
scoreboard objectives add opt_cdmg dummy

scoreboard objectives add opt_hd1_crate dummy
scoreboard objectives add opt_hd2_crate dummy
scoreboard objectives add opt_hd3_crate dummy
scoreboard objectives add opt_chst1_crate dummy
scoreboard objectives add opt_chst2_crate dummy
scoreboard objectives add opt_chst3_crate dummy
scoreboard objectives add opt_lgs1_crate dummy
scoreboard objectives add opt_lgs2_crate dummy
scoreboard objectives add opt_lgs3_crate dummy
scoreboard objectives add opt_ft1_crate dummy
scoreboard objectives add opt_ft2_crate dummy
scoreboard objectives add opt_ft3_crate dummy
scoreboard objectives add opt_m1_crate dummy
scoreboard objectives add opt_m2_crate dummy
scoreboard objectives add opt_m3_crate dummy
scoreboard objectives add opt_o1_crate dummy
scoreboard objectives add opt_o2_crate dummy
scoreboard objectives add opt_o3_crate dummy

scoreboard objectives add opt_hd1_cdmg dummy
scoreboard objectives add opt_hd2_cdmg dummy
scoreboard objectives add opt_hd3_cdmg dummy
scoreboard objectives add opt_chst1_cdmg dummy
scoreboard objectives add opt_chst2_cdmg dummy
scoreboard objectives add opt_chst3_cdmg dummy
scoreboard objectives add opt_lgs1_cdmg dummy
scoreboard objectives add opt_lgs2_cdmg dummy
scoreboard objectives add opt_lgs3_cdmg dummy
scoreboard objectives add opt_ft1_cdmg dummy
scoreboard objectives add opt_ft2_cdmg dummy
scoreboard objectives add opt_ft3_cdmg dummy
scoreboard objectives add opt_m1_cdmg dummy
scoreboard objectives add opt_m2_cdmg dummy
scoreboard objectives add opt_m3_cdmg dummy
scoreboard objectives add opt_o1_cdmg dummy
scoreboard objectives add opt_o2_cdmg dummy
scoreboard objectives add opt_o3_cdmg dummy

forceload add -30000000 1602 -30000000 1602

setblock -30000000 -64 1602 shulker_box