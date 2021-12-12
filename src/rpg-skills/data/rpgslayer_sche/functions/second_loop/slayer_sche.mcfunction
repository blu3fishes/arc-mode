execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{blade:1b},Slot:-106b}]}] run tag @s add slayer
execute as @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{blade:1b},Slot:-106b}]}] run tag @s remove slayer

tellraw @a[tag=slayer,scores={sl_potion=12},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{sl_potion:1b}}]}] {"text":"[Skill] 포션이 재생성되었습니다.","color":"dark_red","bold":true,"italic":false}
tellraw @a[tag=slayer,scores={slayer_skill=25}] {"text":"[Ulti] 궁극기를 사용할 준비가 되었습니다.","color":"dark_gray","bold":true,"italic":false}

give @a[tag=slayer,scores={sl_potion=12},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{sl_potion:1b}}]}] minecraft:splash_potion{HideFlags:32,sl_potion:1b,display:{Name:'{"text":"[Skill] 피로 짙은 회복","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"슬레이어 집단 고유의 흑마술","color":"dark_gray","bold":true,"italic":false}']},CustomPotionEffects:[{Id:6b,Amplifier:1b,Duration:1}],CustomPotionColor:5373952}
effect give @a[tag=slayer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}}] speed 2 1 false

scoreboard players set @a[tag=slayer,scores={sl_potion=12..},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{sl_potion:1b}}]}] sl_potion 0
scoreboard players add @a[tag=slayer,scores={sl_potion=..12}] sl_potion 1
scoreboard players add @a[tag=slayer,scores={slayer_skill=..25}] slayer_skill 1

scoreboard players set @a[tag=!slayer] slayer_skill 0
scoreboard players set @a[tag=!slayer] sl_potion 0