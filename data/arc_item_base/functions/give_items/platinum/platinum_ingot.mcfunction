recipe take @s arc_item_base:platinum/platinum_ingot
advancement revoke @s only arc_item_base:platinum/platinum_ingot
advancement grant @s only arc_item_base:guide/arc_platinum

clear @s minecraft:knowledge_book

give @s ghast_spawn_egg{display:{Name:'{"text":"Platinum Ingot","bold":false,"italic":false}'},CustomModelData:700,custom:1b,EntityTag:{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["delete"]}} 1
