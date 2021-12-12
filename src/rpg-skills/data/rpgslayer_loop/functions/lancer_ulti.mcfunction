########## lancer ulti ################
execute at @a[scores={lc_ulti_use=0}] run summon lightning_bolt ~ ~ ~
execute at @a[scores={lc_ulti_use=0}] run summon lightning_bolt ~ ~ ~
execute at @a[scores={lc_ulti_use=0}] run summon lightning_bolt ~ ~ ~
playsound minecraft:entity.generic.explode master @a[scores={lc_ulti_use=0}]
weather rain 40

######## end ##########################
scoreboard players set @a[scores={lc_ulti_use=1..}] lc_ulti_use 0