scoreboard players set @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{bucler:1b}}]},scores={damage_dealt=1..,tanker_skill=40..}] tanker_skill_use 3

execute at @a[scores={damage_dealt=1..,tanker_skill_use=3}] run scoreboard players set @a[distance=..5,scores={damage_taken=1..,tanker_skill_use=0}] tanker_ulti 3
execute at @a[scores={damage_dealt=1..,tanker_skill_use=3}] as @e[type=!player,distance=..8] if predicate rpgslayer_loop:hostile run scoreboard players set @e[type=!player,distance=..8] tanker_ulti 3

execute if entity @a[scores={tanker_skill_use=1}] run tellraw @a [{"text":"[Class RPG]","color":"gray","bold":true,"italic":false},{"selector":"@s","color":"gray","bold":true,"italic":false},{"text":" 가 태양의 힘으로 번개를 내리게 했습니다! ","bold":false,"italic":false}]
effect give @a[scores={tanker_skill_use=1}] absorption 3 1 true
execute at @e[type=!villager,scores={tanker_ulti=1}] run summon lightning_bolt ~ ~ ~
execute at @e[scores={tanker_ulti=1}] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.4 800
effect give @e[scores={tanker_ulti=1}] slowness 20 99 false
effect give @e[scores={tanker_ulti=1}] blindness 1 99 false

scoreboard players remove @e[scores={tanker_ulti=1..}] tanker_ulti 1
scoreboard players set @a[scores={tanker_skill_use=1}] tanker_skill 0
scoreboard players remove @a[scores={tanker_skill_use=1..}] tanker_skill_use 1
