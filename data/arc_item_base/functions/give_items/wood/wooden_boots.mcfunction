recipe take @s arc_item_base:wood/wooden_boots
advancement revoke @s only arc_item_base:wood/wooden_boots
advancement grant @s only arc_item_base:guide/arc_journey_begin2

clear @s minecraft:knowledge_book

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.8

give @s leather_boots{Unbreakable:1b,display:{Name:'{"text":"Wooden Boots","bold":false,"italic":false}',color:5712640},HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1692579795,-2128002907,-1691260316,-454365700],Slot:"feet"}]} 1