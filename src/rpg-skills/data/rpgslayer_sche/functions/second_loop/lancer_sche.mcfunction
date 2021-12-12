effect give @a[tag=lancer] mining_fatigue 3 0 true
effect give @a[tag=lancer] conduit_power 3 0 true
effect give @a[tag=lancer] speed 3 0 true

tellraw @a[tag=lancer,scores={lc_absorb=12}] {"text":"[Skill] Regeneration Attack is ready.","color":"dark_gray","bold":true,"italic":false}
tellraw @a[tag=lancer,scores={lculti_skill=90}] {"text":"[Ulti] Tribulation is ready.","color":"blue","bold":true,"italic":false}
tellraw @a[tag=lancer,scores={lc_thrower=12}] {"text":"[Skill] Absorb Throw is ready.","color":"dark_gray","bold":true,"italic":false}

give @a[tag=lancer,scores={lc_give=5},nbt=!{Inventory:[{id:"minecraft:trident",tag:{spear:1b}}]}] trident{spear:1b,display:{Name:'{"text":"일루전 스피어 & 리테이커 [스피어]","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"<Skill> 충신의 스피어","color":"gray","bold":false,"italic":false}','{"text":"쿨타임 5초","color":"gray","bold":false,"italic":false}','{"text":"충신의 단창을 날린다.","color":"gray","bold":false,"italic":false}','{"text":"<Skill> 충신의 가호","color":"gray","bold":false,"italic":false}','{"text":"쿨타임 12초","color":"gray","bold":false,"italic":false}','{"text":"충신의 창을 던질때마다 ","color":"gray","bold":false,"italic":false}','{"text":"흡수Ⅰ의 효과를 받는다.","color":"gray","bold":false,"italic":false}']},HideFlags:5,Unbreakable:0b,Damage:1,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;272441763,1805536536,-1105976320,-812793181],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;828141534,1532577869,-1490744583,1016475137],Slot:"mainhand"}]} 1

scoreboard players add @a[tag=lancer,scores={lculti_skill=..90}] lculti_skill 1
scoreboard players add @a[tag=lancer,scores={lc_absorb=..12}] lc_absorb 1
scoreboard players add @a[tag=lancer,scores={lc_thrower=..12}] lc_thrower 1
scoreboard players set @a[tag=lancer,scores={lc_give=5..},nbt=!{Inventory:[{id:"minecraft:trident",tag:{spear:1b}}]}] lc_give 0
scoreboard players add @a[tag=lancer,scores={lc_give=..5}] lc_give 1

scoreboard players set @a[tag=!lancer] lculti_skill 89
scoreboard players set @a[tag=!lancer] lc_absorb 11
scoreboard players set @a[tag=!lancer] lc_thrower 11
scoreboard players set @a[tag=!lancer] lc_give 4