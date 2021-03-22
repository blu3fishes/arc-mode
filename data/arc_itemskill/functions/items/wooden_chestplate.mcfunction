recipe take @s arc_itemskill:wooden_chestplate
advancement revoke @s only arc_itemskill:wooden_chestplate
advancement grant @s only arc_itemskill:guide/arc_journey_begin2

clear @s minecraft:knowledge_book

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.8


give @s leather_chestplate{Unbreakable:1b,display:{Name:'{"text":"Wooden ChestPlate","bold":false,"italic":false}',color:5712640},HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1763398197,-607566394,-1206153270,1357339461],Slot:"chest"}]} 1