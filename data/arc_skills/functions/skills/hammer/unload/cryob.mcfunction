# KABOOM!
tag @s add notme
execute at @s run playsound entity.dragon_fireball.explode master @a ~ ~ ~ 1 1 1
execute at @s run summon area_effect_cloud ~-7 ~ ~ {Radius:4f,Duration:300,Color:11010211,Tags:["cryob"]}
execute at @s run summon area_effect_cloud ~7 ~ ~ {Radius:4f,Duration:300,Color:11010211,Tags:["cryob"]}
execute at @s run summon area_effect_cloud ~ ~ ~7 {Radius:4f,Duration:300,Color:11010211,Tags:["cryob"]}
execute at @s run summon area_effect_cloud ~ ~ ~-7 {Radius:4f,Duration:300,Color:11010211,Tags:["cryob"]}
tag @s remove notme