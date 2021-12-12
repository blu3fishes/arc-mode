scoreboard players operation .type arc.BowType = @s arc.BowType
# 보다 정확한 값 측정을 위해 10만 배수로 불려서 가져온다.
execute store result score .atkdmg arc.BowType run attribute @s generic.attack_damage get 100000
execute store result score .crate arc.BowType run scoreboard players get @s crit_rate
execute store result score .cdmg arc.BowType run scoreboard players get @s crit_dmg

scoreboard players operation .cdmg arc.BowType += #100 arc.BowType

function rpg:crit/get_random/get_random
execute if score .crate arc.BowType >= #random crit_rand at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 0.6