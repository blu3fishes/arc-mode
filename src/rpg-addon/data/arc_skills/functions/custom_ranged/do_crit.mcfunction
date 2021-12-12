tag @s add crit_arrow
## crit arrow의 경우, critdmg 값 만큼 damage 값을 더 배수화 시키자.
scoreboard players operation .atkdmg arc.BowType *= .cdmg arc.BowType
scoreboard players operation .atkdmg arc.BowType /= #100 arc.BowType
## calculate critical damage here
execute at @s run particle minecraft:glow ~ ~0.4 ~ 0.4 0.8 0.4 0 10