recipe take @s arc_itemskill:wooden_leggings
advancement revoke @s only arc_itemskill:wooden_leggings
advancement grant @s only arc_itemskill:guide/arc_journey_begin2

clear @s minecraft:knowledge_book

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.8

give @s leather_leggings{Unbreakable:1b,display:{Name:'{"text":"Wooden Leggings","bold":false,"italic":false}',color:5712640},HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1015279552,-47232836,-1372819565,878712431],Slot:"legs"}]} 1