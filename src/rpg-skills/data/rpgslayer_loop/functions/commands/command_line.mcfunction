scoreboard players enable @a cp_start
execute if entity @a[scores={cp_start=1..}] run function rpgslayer_init:init
scoreboard players set @a[scores={cp_start=1..}] cp_start 0
###############################################################################
scoreboard players enable @a cp_help
tellraw @a[scores={cp_help=1..}] [{"text":"/trigger cp_start: Reload datapack"},{"text":"\n/trigger cp_slayer: Change job to slayer"},{"text":"\n/trigger cp_tanker: Change job to tanker"},{"text":"\n/trigger cp_archer: Change job to archer"},{"text":"\n/trigger cp_nuker: Change job to nuker"},{"text":"\n/trigger cp_lancer: Change job to lancer"},{"text":"\n/trigger cp_get_red: Get knights of blood's armor set"},{"text":"\n/trigger cp_get_blue: Get blue sky's armor set"},{"text":"\n/trigger cp_help: Show help and our discord server"}]
execute if entity @a[scores={cp_help=1..}] run tellraw @a [{"text":"Fore More help, Contact us to : ","color":"white","bold":true,"italic":false},{"text":"Discord","color":"yellow","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Our Discord Community!"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/5bQGnMx"}}]
scoreboard players set @a[scores={cp_help=1..}] cp_help 0
###############################################################################
scoreboard players enable @a cp_slayer
scoreboard players enable @a cp_tanker
scoreboard players enable @a cp_archer
scoreboard players enable @a cp_nuker
scoreboard players enable @a cp_lancer
execute if entity @a[scores={cp_slayer=1..},limit=1] run execute at @a[scores={cp_slayer=1..},limit=1] run function rpgslayer:jobs/functions/slayer
execute if entity @a[scores={cp_tanker=1..},limit=1] run execute at @a[scores={cp_tanker=1..},limit=1] run function rpgslayer:jobs/functions/tanker
execute if entity @a[scores={cp_archer=1..},limit=1] run execute at @a[scores={cp_archer=1..},limit=1] run function rpgslayer:jobs/functions/archer
execute if entity @a[scores={cp_nuker=1..},limit=1] run execute at @a[scores={cp_nuker=1..},limit=1] run function rpgslayer:jobs/functions/nuker
execute if entity @a[scores={cp_lancer=1..},limit=1] run execute at @a[scores={cp_lancer=1..},limit=1] run function rpgslayer:jobs/functions/lancer
scoreboard players set @a[scores={cp_slayer=1..}] cp_slayer 0
scoreboard players set @a[scores={cp_tanker=1..}] cp_tanker 0
scoreboard players set @a[scores={cp_archer=1..}] cp_archer 0
scoreboard players set @a[scores={cp_nuker=1..}] cp_nuker 0
scoreboard players set @a[scores={cp_lancer=1..}] cp_lancer 0
scoreboard players enable @a cp_get_red
scoreboard players enable @a cp_get_blue
execute if entity @a[scores={cp_get_red=1..},limit=1] run execute at @a[scores={cp_get_red=1..},limit=1] run function rpgslayer:jobs/functions/ad
execute if entity @a[scores={cp_get_blue=1..},limit=1] run execute at @a[scores={cp_get_blue=1..},limit=1] run function rpgslayer:jobs/functions/ap
scoreboard players set @a[scores={cp_get_red=1..}] cp_get_red 0
scoreboard players set @a[scores={cp_get_blue=1..}] cp_get_blue 0