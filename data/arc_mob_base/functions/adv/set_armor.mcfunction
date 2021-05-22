# MC 1.16
replaceitem entity @s armor.head diamond_helmet 1
replaceitem entity @s armor.chest diamond_chestplate 1
replaceitem entity @s armor.legs diamond_leggings 1
replaceitem entity @s armor.feet diamond_boots 1
# MC 1.17
# item replace entity @s armor.head with diamond_helmet 1
# item replace entity @s armor.chest with diamond_chestplate 1
# item replace entity @s armor.legs with diamond_leggings 1
# item replace entity @s armor.feet with diamond_boots 1

# Remove Drop Chance!!!
data modify entity @s ArmorDropChances[0] 0.0f
data modify entity @s ArmorDropChances[1] 0.0f
data modify entity @s ArmorDropChances[2] 0.0f
data modify entity @s ArmorDropChances[3] 0.0f

tag @s remove NotArmor
scoreboard players set @s arc.AdvMob 0