execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/random
execute store result score @s option_class run data get entity @s Item.tag.class

execute at @s[scores={option_class=1}] run particle dust 0.706 0.706 0.706 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force
execute at @s[scores={option_class=2}] run particle dust 0.165 0.831 0 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force
execute at @s[scores={option_class=3}] run particle dust 0 0.137 0.753 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force
execute at @s[scores={option_class=4}] run particle dust 0.655 0 0.855 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force
execute at @s[scores={option_class=5}] run particle dust 0.855 0.839 0 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force
execute at @s[scores={option_class=6}] run particle dust 0.42 0 0 1 ~ ~ ~ 0.4 0.4 0.4 0.2 300 force

execute at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.7 1 0

execute as @s[scores={option_class=1}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/common
execute as @s[scores={option_class=2}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/uncommon
execute as @s[scores={option_class=3}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/rare
execute as @s[scores={option_class=4}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/epic
execute as @s[scores={option_class=5}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/legendary
execute as @s[scores={option_class=6}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/mystic

execute as @s run function rpg:option/craft/roll/db/first

execute as @s[scores={option_class=1}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/common
execute as @s[scores={option_class=2}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/uncommon
execute as @s[scores={option_class=3}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/rare
execute as @s[scores={option_class=4}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/epic
execute as @s[scores={option_class=5}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/legendary
execute as @s[scores={option_class=6}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/mystic

execute as @s run function rpg:option/craft/roll/db/second

execute as @s[scores={option_class=1}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/common
execute as @s[scores={option_class=2}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/uncommon
execute as @s[scores={option_class=3}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/rare
execute as @s[scores={option_class=4}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/epic
execute as @s[scores={option_class=5}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/legendary
execute as @s[scores={option_class=6}] run execute store result score #random option_random run loot spawn ~ -2 ~ loot rpg:option/mystic

execute as @s run function rpg:option/craft/roll/db/third