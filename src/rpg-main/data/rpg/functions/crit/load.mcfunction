scoreboard objectives add crit_rate dummy
scoreboard objectives add crit_dmggiven minecraft.custom:minecraft.damage_dealt
scoreboard objectives add crit_dmg dummy
scoreboard objectives add crit_rand dummy
scoreboard objectives add crit_health dummy

scoreboard players set #100 crit_rand 100
scoreboard players set #0 crit_health 0
scoreboard players add @a crit_rate 0
scoreboard players add @a crit_dmg 0