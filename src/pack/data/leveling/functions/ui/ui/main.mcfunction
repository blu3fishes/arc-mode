title @a actionbar [{"text":"♥","color":"red","bold":false,"italic":false},{"score":{"name":"*","objective":"ui_nhealth"},"color":"red","bold":false,"italic":false},{"text":" ⛨","color":"green","bold":true,"italic":false},{"score":{"name":"*","objective":"ui_armor"},"color":"green","bold":false,"italic":false},{"text":" Lv.","color":"gold","bold":false,"italic":false},{"score":{"name":"*","objective":"exp_level"},"color":"gold","bold":false,"italic":false},{"text":"[","color":"gold","bold":false,"italic":false},{"score":{"name":"*","objective":"exp_nexp"},"color":"gold","bold":false,"italic":false},{"text":" | ","color":"gold","bold":false,"italic":false},{"score":{"name":"*","objective":"exp_fexp"},"color":"gold","bold":false,"italic":false},{"text":"]","color":"gold","bold":false,"italic":false}]

execute as @a store result score @s ui_health run data get entity @s Health 100
execute as @a store result score @s ui_nabs run data get entity @s AbsorptionAmount 100

execute as @a run scoreboard players operation @s ui_lhealth = @s ui_nabs
execute as @a run scoreboard players operation @s ui_lhealth += @s ui_health
execute as @a run scoreboard players operation @s ui_nhealth = @s ui_lhealth

execute as @a store result score @s ui_armor run attribute @s minecraft:generic.armor get 100

scoreboard players enable @a stat