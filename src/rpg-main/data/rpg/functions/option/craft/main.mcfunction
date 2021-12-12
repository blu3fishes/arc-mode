## 랜덤값 받아오는 명령어
execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/random
execute store result score #random30 option_random run loot spawn ~ -2 ~ loot rpg:option/random_tt
execute store result score #random10 option_random run loot spawn ~ -2 ~ loot rpg:option/random_ten
## 현재 등급값 받아오기
execute store result score @s option_class run data get entity @s Item.tag.class
## 등급업 테스트 및 등급 갱신
## class:1b common / class:2b uncommon / class:3b rare / class:4b epic / class:5b legendary / class:6b mystic
execute as @s[scores={option_class=0}] run function rpg:option/craft/ascend/register
execute as @s[nbt={Item:{tag:{class:1b}}}] if score #random30 option_random = #5 option_random run function rpg:option/craft/ascend/common
execute as @s[nbt={Item:{tag:{class:2b}}}] if score #random30 option_random = #10 option_random run function rpg:option/craft/ascend/uncommon

## 확률 정산 방식을 바꾸어 좀 더 어렵게 접근할 수 있도록 만듬.
execute as @s[nbt={Item:{tag:{class:3b}}}] if score #random30 option_random = #15 option_random run function rpg:option/craft/ascend/rare
## legendary 부터는 루비큐브로 제한(구현 미룸)
execute as @s[nbt={Item:{tag:{class:4b}}}] if score #random30 option_random = #20 option_random run function rpg:option/craft/ascend/epic
## mystic
execute as @s[nbt={Item:{tag:{class:5b}}}] if score #random30 option_random = #25 option_random run function rpg:option/craft/ascend/legendary

function rpg:option/craft/roll/main

kill @e[type=item,tag=emerald,sort=nearest,limit=1]