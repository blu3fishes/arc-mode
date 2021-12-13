execute at @s run summon area_effect_cloud ^ ^ ^1 {Duration:20,Tags:["pos"]}
## store armorstand pos / player pos
execute store result score .playerpos0 arc_skill_use run data get entity @s Pos[0] 10000
execute store result score .playerpos1 arc_skill_use run data get entity @s Pos[1] 10000
execute store result score .playerpos2 arc_skill_use run data get entity @s Pos[2] 10000
execute as @e[type=area_effect_cloud,tag=pos] run function rpgslayer_loop:archer/get_pos_stand
kill @e[type=area_effect_cloud,tag=pos,limit=1,sort=nearest]

scoreboard players operation .targetpos0 arc_skill_use -= .playerpos0 arc_skill_use
scoreboard players operation .targetpos1 arc_skill_use -= .playerpos1 arc_skill_use
scoreboard players operation .targetpos2 arc_skill_use -= .playerpos2 arc_skill_use

execute at @s run summon arrow ^0.8 ^1.2 ^0.5 {Tags:["skill_arr_left"],Owner:[I;1,1,1,1]}
execute at @s run summon arrow ^ ^1.2 ^0.5 {Tags:["skill_arr"],Owner:[I;1,1,1,1]}
execute at @s run summon arrow ^-0.8 ^1.2 ^0.5 {Tags:["skill_arr_right"],Owner:[I;1,1,1,1]}

execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[0] double 0.0003 run scoreboard players get .targetpos0 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[1] double 0.0003 run scoreboard players get .targetpos1 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr,limit=1] Motion[2] double 0.0003 run scoreboard players get .targetpos2 arc_skill_use

execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[0] double 0.0003 run scoreboard players get .targetpos0 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[1] double 0.0003 run scoreboard players get .targetpos1 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr_left,limit=1] Motion[2] double 0.0003 run scoreboard players get .targetpos2 arc_skill_use

execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[0] double 0.0003 run scoreboard players get .targetpos0 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[1] double 0.0003 run scoreboard players get .targetpos1 arc_skill_use
execute store result entity @e[type=arrow,tag=skill_arr_right,limit=1] Motion[2] double 0.0003 run scoreboard players get .targetpos2 arc_skill_use

execute at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.4 0

## get uuid
execute store result score .search0 arc_skill_use run data get entity @s UUID[0]
execute store result score .search1 arc_skill_use run data get entity @s UUID[1]
execute store result score .search2 arc_skill_use run data get entity @s UUID[2]
execute store result score .search3 arc_skill_use run data get entity @s UUID[3]

execute as @e[type=arrow,tag=skill_arr] run function rpgslayer_loop:archer/process_arrow
execute as @e[type=arrow,tag=skill_arr_right] run function rpgslayer_loop:archer/process_arrow
execute as @e[type=arrow,tag=skill_arr_left] run function rpgslayer_loop:archer/process_arrow
