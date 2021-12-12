scoreboard players set @a[scores={carrotstick_used=1..,slayer_skill=25..},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{blade:1b},Slot:-106b}]}] dark_rune 1

execute at @a[scores={dark_rune=1..}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={dark_rune=1..}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={dark_rune=1..}] run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..20]
execute at @a[scores={dark_rune=1..}] run effect give @a[distance=..4] haste 7 10 false
execute at @a[scores={dark_rune=1..}] run effect give @a[distance=..4] absorption 7 1 false
execute at @a[scores={dark_rune=1..}] run effect give @a[distance=..4] speed 7 1 false
execute at @a[scores={dark_rune=1..}] run effect give @a[distance=..4] weakness 7 0 false

execute if entity @a[scores={dark_rune=1..}] run tellraw @a [{"text":"[Class RPG] ","color":"gray","bold":true,"italic":false},{"selector":"@a[scores={dark_rune=1..}]","bold":true,"italic":false},{"text":" 가 광기에 휩싸였다!","color":"gray","bold":false,"italic":false}]

scoreboard players set @a[scores={dark_rune=1..}] slayer_skill 0
scoreboard players set @a[scores={dark_rune=1..}] dark_rune 0
