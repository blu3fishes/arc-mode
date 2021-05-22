recipe take @s arc_item_base:diamond/diamond_boots
advancement revoke @s only arc_item_base:diamond/diamond_boots

clear @s minecraft:knowledge_book
give @s diamond_boots{HideFlags:4,display:{Name:'{"text":"Diamond Gaiters","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:18,Operation:0,UUID:[I;-102356945,-1957212312,-1138875926,-2088959727],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:16,Operation:0,UUID:[I;712789655,170642893,-1806468847,708637247],Slot:"feet"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.03,Operation:1,UUID:[I;2026134085,-1523888904,-1628804918,6934077],Slot:"feet"}]} 1
