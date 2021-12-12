scoreboard players set @a[scores={carrotstick_used=1..,lculti_skill=90..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{lc_ulti:1b}}}] lc_ulti_use 1
execute if entity @a[scores={carrotstick_used=1..,lculti_skill=90..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{lc_ulti:1b}}}] run schedule function rpgslayer_loop:lancer_ulti 3s
execute if entity @a[scores={carrotstick_used=1..,lculti_skill=90..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{lc_ulti:1b}}}] run tellraw @a [{"text":"[Class PVP] ","color":"gray","bold":true,"italic":false},{"text":"The weather seems to be weird..","color":"gray","bold":false,"italic":false}]
execute at @a[scores={carrotstick_used=1..,lculti_skill=90..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{lc_ulti:1b}}}] run playsound minecraft:entity.elder_guardian.curse master @a
scoreboard players set @a[scores={lc_ulti_use=1}] lculti_skill 0

scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lc_spell:1b}}},scores={damage_dealt=1..,lc_absorb=12..}] lc_absorb_use 1
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lc_spell:1b}}},scores={damage_dealt=1..,lc_absorb=12..}] run scoreboard players set @a[distance=..10,scores={damage_taken=1..,lc_absorb_use=0}] lc_abs_taker 10
effect give @a[scores={lc_absorb_use=1..}] regeneration 6 2 true
effect give @a[nbt={SelectedItem:{id:"minecraft:trident"}},tag=lancer] minecraft:slow_falling 1 0
scoreboard players add @a[scores={lc_th_ready=..4},nbt={SelectedItem:{id:"minecraft:trident",tag:{spear:1b}}}] lc_th_ready 1
effect give @a[scores={lc_throw=1..,lc_thrower=12..,lc_th_ready=1..}] absorption 10 0 true
execute at @a[scores={lc_throw=1..,lc_thrower=12..,lc_th_ready=1..}] run particle minecraft:composter ~ ~ ~ 1 1 1 0.00000000000000001 200
execute at @a[scores={lc_throw=1..,lc_thrower=12..,lc_th_ready=1..}] run playsound minecraft:item.trident.return master @a[distance=..20]
scoreboard players set @a[scores={lc_throw=1..,lc_thrower=12..,lc_th_ready=1..}] lc_thrower 0
scoreboard players set @a[scores={lc_throw=1..}] lc_throw 0
scoreboard players remove @a[scores={lc_th_ready=1..},nbt=!{SelectedItem:{id:"minecraft:trident",tag:{spear:1b}}}] lc_th_ready 1
execute as @e run effect give @a[scores={lc_abs_taker=1}] instant_damage 1 0 true

scoreboard players remove @a[scores={lc_abs_taker=1..}] lc_abs_taker 1
scoreboard players set @a[scores={lc_absorb_use=1..}] lc_absorb 0
scoreboard players set @a[scores={lc_absorb_use=1..}] lc_absorb_use 0