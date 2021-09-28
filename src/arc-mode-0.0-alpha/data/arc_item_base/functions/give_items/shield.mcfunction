recipe take @s arc_item_base:shield
advancement revoke @s only arc_item_base:shield

clear @s minecraft:knowledge_book

give @s shield{display:{Name:'{"text":"Shield","italic":false}'},HideFlags:125,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1047360520,-838120887,-1822253932,107086927],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3,Operation:1,UUID:[I;1047360523,-838120837,-1832253932,103086927],Slot:"offhand"}],BlockEntityTag:{Base:15,Patterns:[{Color:0,Pattern:"cs"},{Color:0,Pattern:"ms"}]}} 1