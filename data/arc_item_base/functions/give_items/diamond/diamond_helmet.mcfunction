recipe take @s arc_item_base:diamond/diamond_helmet
advancement revoke @s only arc_item_base:diamond/diamond_helmet

clear @s minecraft:knowledge_book
give @s diamond_helmet{HideFlags:4,display:{Name:'{"text":"Diamond Helm","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;-119291506,-1249685869,-1626992947,-1842915760],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:20,Operation:0,UUID:[I;115572956,-1754510984,-1180010793,708898512],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.03,Operation:1,UUID:[I;-1356842927,-134563998,-1959706063,-609836560],Slot:"head"}]} 1
