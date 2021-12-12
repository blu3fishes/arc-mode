# MC 1.16
attribute @s minecraft:generic.max_health modifier add 140ee845-7308-4e3d-ae32-9ca73b4f90ab "health_double" 2 multiply_base
execute store result score .health arc.NowHealth run attribute @s minecraft:generic.max_health get
execute store result entity @s Health float 1 run scoreboard players get .health arc.NowHealth
item replace entity @s armor.head with diamond_helmet 1
item replace entity @s armor.chest with diamond_chestplate 1
item replace entity @s armor.legs with diamond_leggings 1
item replace entity @s armor.feet with diamond_boots 1
item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"군주의 방패","color":"yellow","bold":false,"italic":false}',Lore:['{"text":"군주의 문양이 새겨져 있다.","color":"gray","bold":false,"italic":false}','{"text":"예로부터 군주의 문양은 행운의 상징이었다.","color":"gray","bold":false,"italic":false}']},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.5,Operation:0,UUID:[I;-2011736843,-216510806,-1631016000,1707638168],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.12,Operation:1,UUID:[I;815006782,2108051439,-1590079685,-322160724],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-0.08,Operation:1,UUID:[I;-2112643834,1616071059,-2051755318,1337660074],Slot:"offhand"}],BlockEntityTag:{Base:11,Patterns:[{Color:15,Pattern:"cre"},{Color:15,Pattern:"moj"},{Color:15,Pattern:"cbo"},{Color:11,Pattern:"flo"}]}} 1
item replace entity @s weapon.mainhand with iron_sword{display:{Name:'{"text":"군주의 검","bold":false,"italic":false}'},Enchantments:[{}]}
# MC 1.17
# item replace entity @s armor.head with diamond_helmet 1
# item replace entity @s armor.chest with diamond_chestplate 1
# item replace entity @s armor.legs with diamond_leggings 1
# item replace entity @s armor.feet with diamond_boots 1

# Remove Drop Chance!!!
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]
data modify entity @s HandDropChances set value [0.000F,0.005F]

tag @s remove NotArmor
tag @s add LootAdv
team join armor @s
scoreboard players set @s arc.AdvMob 0