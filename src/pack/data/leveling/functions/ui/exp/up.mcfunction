scoreboard players add @s exp_level 1
execute store result score #temp exp_fexp run scoreboard players get @s exp_fexp
scoreboard players operation #temp exp_fexp /= @s exp_level
scoreboard players operation #remain exp_nexp = @s exp_nexp
scoreboard players operation #remain exp_nexp -= @s exp_fexp
scoreboard players operation @s exp_fexp += #temp exp_fexp
scoreboard players operation @s exp_nexp = #remain exp_nexp
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 0.8 0
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;15662848],FadeColors:[I;16733268]}]}}}}
tellraw @s [{"text":"[ Level Up! ] \n","color":"yellow","bold":true,"italic":false},{"text":"[rpg] 스탯창을 확인하세요.","color":"gray","bold":false,"italic":false}]
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:3b}}

## increase stat_left

scoreboard players add @s stat_left 4