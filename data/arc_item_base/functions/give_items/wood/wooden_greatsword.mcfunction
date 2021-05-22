recipe take @s arc_item_base:wood/wooden_greatsword
advancement revoke @s only arc_item_base:wood/wooden_greatsword
advancement grant @s only arc_item_base:guide/arc_journey_begin

clear @s minecraft:knowledge_book

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.8

give @s wooden_sword{display:{Name:'{"text":"Wooden Greatsword","bold":false,"italic":false}'},CustomModelData:700,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8.25,Operation:0,UUID:[I;1987199504,-381072182,-1792623420,-1237816926],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.65,Operation:0,UUID:[I;664172960,-54571809,-1156897864,-614949072],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.4,Operation:1,UUID:[I;64955625,976897512,-1773046831,1840976066],Slot:"mainhand"}]} 1
