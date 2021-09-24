execute store result score @s sdi_lhealth run data get entity @s Health 100

execute store result score @s sdi_cabsorption run data get entity @s AbsorptionAmount 100
scoreboard players operation @s sdi_lhealth += @s sdi_cabsorption

scoreboard players operation @s sdi_lhealth -= @s sdi_chealth


execute as @s[tag=sdi_r] unless score @s sdi_lhealth matches 0 rotated as @s run function simple_dmg_indicator:private/dd



execute store result score @s sdi_chealth run data get entity @s Health 100
scoreboard players operation @s sdi_chealth += @s sdi_cabsorption
tag @s[tag=!sdi_r] add sdi_r