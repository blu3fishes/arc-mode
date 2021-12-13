function rpgslayer_loop:slayer_loop
function rpgslayer_loop:archer_loop
function rpgslayer_loop:tanker_loop
## 얘네 넣을지는 미정
# function rpgslayer_loop:nuker_loop
# function rpgslayer_loop:lancer_loop
## pvp애드온 넣을지는 미정
# unction roadofcircle_one:loop_func

## scoreboard effect clearline
scoreboard players set @a[scores={damage_dealt=1..}] damage_dealt 0
scoreboard players set @a[scores={damage_taken=1..}] damage_taken 0
scoreboard players set @a carrotstick_used 0
scoreboard players set @a linger_used 0

# kill @e[type=trident,nbt={inGround:1b}]
# kill @e[type=arrow,nbt={inGround:1b}]
# kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]

function rpgslayer_loop:welcomemessage
# function rpgslayer_loop:commands/command_line