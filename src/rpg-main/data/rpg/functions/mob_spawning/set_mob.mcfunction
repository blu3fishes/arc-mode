# execute if score level arc.MobMode matches 1 run 
function rpg:mob_spawning/set_mob_one
schedule function rpg:mob_spawning/set_mob 10t
execute at @a run effect give @e[team=antimagic,distance=..17] minecraft:glowing 30 1 true
execute at @a run effect give @e[team=armor,distance=..17] minecraft:glowing 30 1 true
execute at @a run effect give @e[team=lightning,distance=..17] minecraft:glowing 30 1 true
execute at @a run effect give @e[team=poison,distance=..17] minecraft:glowing 30 1 true