tag @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{quiver:1b}}]}] add archer
tag @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{quiver:1b}}]}] remove archer

tellraw @a[tag=archer,scores={archer_skill=45},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{tech:1b}}]}] {"text":"[Ulti] 궁극기가 준비되었습니다.","color":"gold","bold":true,"italic":false}
tellraw @a[tag=archer,scores={poison_skill=25},nbt=!{Inventory:[{id:"minecraft:crossbow",tag:{poison:1b}}]}] {"text":"[Skill] 다음 화살은 독화살이 나옵니다.","color":"dark_gray","bold":true,"italic":false}

scoreboard players add @a[tag=archer,scores={archer_skill=..45}] archer_skill 1
scoreboard players add @a[tag=archer,scores={poison_skill=..25}] poison_skill 1

scoreboard players set @a[tag=!archer] archer_skill 0
scoreboard players set @a[tag=!archer] poison_skill 0