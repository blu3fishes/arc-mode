# check if mob is advanced.
team add antimagic
team add armor
team add lightning
team add poison

team modify antimagic color red
team modify armor color blue
team modify lightning color yellow
team modify poison color dark_green

scoreboard objectives add arc.AdvMob dummy
scoreboard objectives add arc.Projectile dummy
scoreboard objectives add arc.NowHealth dummy
scoreboard objectives add arc.Random dummy

function rpg:mob_spawning/set_mob
function rpg:boss/load