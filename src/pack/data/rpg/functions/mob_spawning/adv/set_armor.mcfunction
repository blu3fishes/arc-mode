# MC 1.16
attribute @s minecraft:generic.max_health modifier add 140ee845-7308-4e3d-ae32-9ca73b4f90ab "health_double" 2 multiply_base
execute store result score .health arc.NowHealth run attribute @s minecraft:generic.max_health get
execute store result entity @s Health float 1 run scoreboard players get .health arc.NowHealth
item replace entity @s armor.head with diamond_helmet 1
item replace entity @s armor.chest with diamond_chestplate 1
item replace entity @s armor.legs with diamond_leggings 1
item replace entity @s armor.feet with diamond_boots 1
# MC 1.17
# item replace entity @s armor.head with diamond_helmet 1
# item replace entity @s armor.chest with diamond_chestplate 1
# item replace entity @s armor.legs with diamond_leggings 1
# item replace entity @s armor.feet with diamond_boots 1

# Remove Drop Chance!!!
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]

tag @s remove NotArmor
tag @s add LootAdv
team join armor @s
scoreboard players set @s arc.AdvMob 0