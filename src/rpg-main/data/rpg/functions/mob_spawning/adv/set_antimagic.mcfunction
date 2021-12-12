attribute @s minecraft:generic.max_health modifier add 44fe0d0b-5911-4836-a247-87d20f9f864e "antimagic" 4 multiply_base
execute store result score .health arc.NowHealth run attribute @s minecraft:generic.max_health get
execute store result entity @s Health float 1 run scoreboard players get .health arc.NowHealth
data modify entity @s HandItems set value [{id:"minecraft:golden_axe",Count:1b},{id:"minecraft:shield",Count:1b}]

item replace entity @s armor.head with golden_helmet{Unbreakable:1b,display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b,display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
item replace entity @s armor.legs with golden_leggings{Unbreakable:1b,display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
item replace entity @s armor.feet with golden_boots{Unbreakable:1b,display:{Name:'{"text":"Antimagic Diamond","bold":false,"italic":false}'},AtributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:0,UUID:[I;1283077382,-81640919,-1697464462,917710127],Slot:"mainhand"}]} 1
item replace entity @s weapon.mainhand with golden_axe
item replace entity @s weapon.offhand with clock{display:{Name:'{"text":"마법저항의 시계","color":"yellow","bold":false,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.14,Operation:1,UUID:[I;-1740150559,-1249949001,-1573077651,3865200],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;-1930857217,657542919,-1291780956,496292359],Slot:"offhand"}]}
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]
data modify entity @s HandDropChances set value [0.000F,0.005F]

tag @s remove NotAntiMagic
tag @s add LootAdv
team join antimagic @s
scoreboard players set @s arc.AdvMob 1