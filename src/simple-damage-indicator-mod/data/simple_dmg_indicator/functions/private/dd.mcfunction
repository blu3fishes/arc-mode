execute if entity @s[type=!#simple_dmg_indicator:large_entities] positioned ^.7 ^-.25 ^ run function simple_dmg_indicator:private/summon 
execute if entity @s[type=#simple_dmg_indicator:large_entities] positioned ^1.35 ^-.25 ^ run function simple_dmg_indicator:private/summon
setblock ~ 255 ~ birch_sign
tag @s add sdi_te

execute if entity @s[scores={sdi_lhealth=..0}] unless entity @s[nbt={ActiveEffects:[{Id:11b}]}] run data merge block ~ 255 ~ {Text1:'{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"red"}'}
execute if entity @s[scores={sdi_lhealth=..0}] if entity @s[nbt={ActiveEffects:[{Id:11b}]}] run data merge block ~ 255 ~ {Text1:'{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"gold"}'}
execute if entity @s[scores={sdi_lhealth=0..}] run data merge block ~ 255 ~ {Text1:'[{"text":"+","color":"green"},{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"green"}]'}
execute at @s as @e[tag=sdi_d_init,sort=nearest,limit=1] run function simple_dmg_indicator:private/ee

tag @s remove sdi_te
setblock ~ 255 ~ air