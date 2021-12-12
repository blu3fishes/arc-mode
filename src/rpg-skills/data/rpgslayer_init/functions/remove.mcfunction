scoreboard objectives remove HP
# scoreboards for skills, you should declare only in here

scoreboard objectives remove damage_dealt
scoreboard objectives remove damage_taken
scoreboard objectives remove carrotstick_used
scoreboard objectives remove linger_used
scoreboard objectives remove pearl_used
scoreboard objectives remove _XP_GAIN

scoreboard objectives remove using_curse
scoreboard objectives remove tanker_ulti
scoreboard objectives remove tanker_skill
scoreboard objectives remove tanker_skill_use
scoreboard objectives remove slayer_skill
scoreboard objectives remove sl_potion
scoreboard objectives remove dark_rune
scoreboard objectives remove nuker_skill
scoreboard objectives remove archer_skill
scoreboard objectives remove poison_skill
scoreboard objectives remove pearl_skill
scoreboard objectives remove sl_slow
scoreboard objectives remove nu_potion
scoreboard objectives remove smoker
scoreboard objectives remove pearl_user
scoreboard objectives remove pearl_count
scoreboard objectives remove lculti_skill
scoreboard objectives remove lc_ulti_use
scoreboard objectives remove lc_absorb
scoreboard objectives remove lc_absorb_use
scoreboard objectives remove lc_abs_taker
scoreboard objectives remove lc_throw
scoreboard objectives remove lc_thrower
scoreboard objectives remove lc_th_ready
scoreboard objectives remove lc_give
scoreboard objectives remove knee_wear

scoreboard objectives remove cp_start
scoreboard objectives remove cp_help
scoreboard objectives remove cp_slayer
scoreboard objectives remove cp_tanker
scoreboard objectives remove cp_archer
scoreboard objectives remove cp_nuker
scoreboard objectives remove cp_lancer
scoreboard objectives remove cp_get_red
scoreboard objectives remove cp_get_blue

# else

gamerule commandBlockOutput false
gamerule doWeatherCycle true
gamerule doDaylightCycle true

scoreboard objectives remove lees_only
scoreboard objectives remove give_slayer
scoreboard objectives remove give_tanker

tellraw @a [{"text":"[ClassPVP] blu3fishez' class pvp mod removed!","color":"dark_gray","bold":true,"italic":false}]
tellraw @a [{"text":"Removed \"ALL\" of the Scoreboards!","color":"dark_gray","bold":true,"italic":false}]
tellraw @a [{"text":"Please check DaylightCycle & WeatherCycle","color":"white","bold":true,"italic":false}]