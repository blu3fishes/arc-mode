recipe take @s arc_itemskill:wooden_helmet
advancement revoke @s only arc_itemskill:wooden_helmet

clear @s minecraft:knowledge_book

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.8

give @s leather_helmet{Unbreakable:1b,display:{Name:'{"text":"나무 투구","bold":false,"italic":false}',color:5712640},HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;1692579795,-2128002907,-1691260316,-454365700],Slot:"head"}]} 1