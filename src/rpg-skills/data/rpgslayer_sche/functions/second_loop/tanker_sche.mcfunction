execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{bucler:1b}}]}] run tag @s add tanker
execute as @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{bucler:1b}}]}] run tag @s remove tanker

tellraw @a[tag=tanker,scores={tanker_skill=40}] {"text":"[Ulti] 태양만세가 준비되었다.","color":"yellow","bold":true,"italic":false}

execute at @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{bucler:1b}}]}] run effect give @e[distance=..10,type=!player] slowness 5 2

scoreboard players add @a[tag=tanker,scores={tanker_skill=..40}] tanker_skill 1

scoreboard players set @a[tag=!tanker] tanker_skill 0