attribute @s minecraft:generic.max_health modifier add 44fe0d0b-5911-4836-a247-87d20f9f864e "antimagic" 4 multiply_base
effect give @s minecraft:regeneration 10 255 false
effect give @s minecraft:night_vision 999999 0 true
replaceitem entity @s armor.head diamond_helmet{display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
replaceitem entity @s armor.chest diamond_chestplate{display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
replaceitem entity @s armor.legs diamond_leggings{display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
replaceitem entity @s armor.feet diamond_boots{display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AtributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]

tag @s remove NotAntiMagic
scoreboard players set @s arc.AdvMob 1