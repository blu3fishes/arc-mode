summon skeleton_horse ~ ~ ~ {Health:600f,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,PersistenceRequired:1b,Health:1200f,Tags:["Check","skeleton_king"],DeathLootTable:"rpg:boss/skeleton_king",Passengers:[{id:"minecraft:blaze",Tags:["Check","King"],Silent:1b,Invulnerable:1b,Health:10000f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}],Attributes:[{Name:generic.max_health,Base:10000}],CustomName:'{"text":"Skeleton King","color":"red","bold":false,"italic":false}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:1b}]}],CustomName:'{"text":"Skeleton King","color":"red","bold":false,"italic":false}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"몰락한 왕의 검","color":"dark_green","bold":false,"italic":false}',Lore:['{"text":"마지막 왕의 유산","color":"gray","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:smite",lvl:2s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:unbreaking",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;1511832066,-1038266612,-1888909573,-1678039678],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-688113306,1489784486,-2044589171,222709331],Slot:"mainhand"}]}},{}],HandDropChances:[0.010F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{display:{Name:'{"text":"왕의 흉갑","bold":false,"italic":false}',Lore:['{"text":"몰락한 왕의 흉갑","bold":false,"italic":false}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;-400349904,-382779057,-2021291705,-1277980963],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:12,Operation:0,UUID:[I;-2011155573,1641172862,-1857117377,1731554098],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;-705588397,-1454684069,-1904361141,1986576427],Slot:"chest"}]}},{id:"minecraft:netherite_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.020F,0.000F],ActiveEffects:[{Id:10b,Amplifier:1b,Duration:20000}],Attributes:[{Name:generic.max_health,Base:1200}]}],Attributes:[{Name:generic.max_health,Base:600},{Name:generic.movement_speed,Base:0.3}]}

execute at @s run playsound entity.wither.spawn master @a ~ ~ ~ 1 1 0
summon lightning_bolt ~ ~10 ~
tellraw @a {"text":"[Boss] 몰락한 국가의 왕이 깨어났다!","color":"gray","bold":false,"italic":false}
kill @s
kill @e[type=item,distance=..0.4,nbt={Item:{id:"minecraft:skeleton_skull",Count:1b}},limit=1]