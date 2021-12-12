## if the item is not the item that has any additional options.
execute at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.1 600
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.4 0

# setblock -30000000 -64 1602 shulker_box
data modify block -30000000 -64 1602 Items[{Slot:0b}] set from entity @s Item

## Lore랑 Name이 없는 경우의 가정하에 만들었는데, 이제 새로 만들어봐야한다.
## 알고리즘으로 생각해낸것은 container.0 에 해당 아이템을 넣고,
## Lore1,2,3에 우리가 원하는 값을 부여한 뒤, 해당 아이템의 Name, Lore값을 마지막에 뒤에 append 해주는 것이다.
data modify entity @s Item.tag.class set value 1b
# data modify entity @s Item.tag.display set value {Lore:['{"text":"✦ Common ▬▬▬","color":"dark_gray","bold":false,"italic":false}','{"text":"Option1","color":"gray","bold":false,"italic":false}','{"text":"Option2","color":"gray","bold":false,"italic":false}','{"text":"Option3","color":"gray","bold":false,"italic":false}','{"text":"▬▬▬▬▬▬▬▬▬▬▬▬","color":"gray","bold":false,"italic":false}']}

data modify entity @s Item.tag.display.Lore prepend value '{"text":""}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"▬▬▬▬▬▬▬▬▬▬▬▬","color":"gray","bold":false,"italic":false}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"Option3","color":"gray","bold":false,"italic":false}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"Option2","color":"gray","bold":false,"italic":false}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"Option1","color":"gray","bold":false,"italic":false}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"✦ Common ▬▬▬","color":"dark_gray","bold":false,"italic":false}'
data modify entity @s Item.tag.display.Lore append from block -30000000 -64 1602 Items[{Slot:0b}].tag.display.Lore
data modify entity @s Item.tag.display.Name set from block -30000000 -64 1602 Items[{Slot:0b}].tag.display.Name

scoreboard players set #random option_random 100