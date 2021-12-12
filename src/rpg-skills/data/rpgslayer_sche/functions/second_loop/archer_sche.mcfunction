effect give @a[tag=archer] speed 3 1 true
effect give @a[tag=archer] mining_fatigue 3 2 true
effect give @a[tag=archer] weakness 3 1 true

tellraw @a[tag=archer,scores={archer_skill=45},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{tech:1b}}]}] {"text":"[Ulti] Technical Bow is ready.","color":"gold","bold":true,"italic":false}
tellraw @a[tag=archer,scores={poison_skill=25},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] {"text":"[Skill] Poison Bow is ready.","color":"dark_gray","bold":true,"italic":false}

give @a[tag=archer,scores={archer_skill=45},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{tech:1b}}]}] crossbow{HideFlags:63,tech:1b,CustomModelData:1412,display:{Name:'{"text":"[Ulti] 테크니컬 보우","color":"green","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"석양이 진다..","color":"gold","bold":true,"italic":false}']},Unbreakable:0b,Damage:308,Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;-4988188,3148120,0,1],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;-6044268,-1524731,0,1],Slot:"offhand"}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:80}],CustomPotionColor:16711680}},{id:"minecraft:spectral_arrow",Count:1b},{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b}
give @a[tag=archer,scores={poison_skill=25},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] minecraft:crossbow{CustomModelData:1413,poison:1b,Damage:325,display:{Name:'{"text":"[Skill] 포이즌보우","color":"green","bold":true,"italic":false}',Lore:['{"text":"1회용 맹독 다트","italic":false,"bold":true}']},HideFlags:63,Enchantments:[{id:"minecraft:piercing",lvl:3s},{id:"minecraft:quick_charge",lvl:-1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;991942,591301,0,1],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:1,UUID:[I;304772,680310,0,1],Slot:"offhand"}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:19b,Amplifier:2b,Duration:200,ShowParticles:1b}]}},{},{}],Charged:1b}

scoreboard players set @a[tag=archer,scores={archer_skill=45..},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{tech:1b}}]}] archer_skill 0
scoreboard players add @a[tag=archer,scores={archer_skill=..45}] archer_skill 1
scoreboard players set @a[tag=archer,scores={poison_skill=25..},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] poison_skill 0
scoreboard players add @a[tag=archer,scores={poison_skill=..25}] poison_skill 1

scoreboard players set @a[tag=!archer] archer_skill 46
scoreboard players set @a[tag=!archer] poison_skill 26