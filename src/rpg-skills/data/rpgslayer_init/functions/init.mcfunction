

# scoreboards for skills, you should declare only in here

scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add carrotstick_used minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add linger_used minecraft.used:minecraft.lingering_potion
scoreboard objectives add pearl_used minecraft.used:minecraft.ender_pearl
scoreboard objectives add _XP_GAIN minecraft.custom:minecraft.player_kills

scoreboard objectives add using_curse dummy
scoreboard objectives add tanker_ulti dummy
scoreboard objectives add tanker_skill dummy
scoreboard objectives add tanker_skill_use dummy
scoreboard objectives add slayer_skill dummy
scoreboard objectives add sl_potion dummy
scoreboard objectives add dark_rune dummy
scoreboard objectives add nuker_skill dummy
scoreboard objectives add archer_skill dummy
scoreboard objectives add poison_skill dummy
scoreboard objectives add pearl_skill dummy
scoreboard objectives add sl_slow dummy
scoreboard objectives add nu_potion dummy
scoreboard objectives add smoker dummy
scoreboard objectives add pearl_user dummy
scoreboard objectives add pearl_count dummy
scoreboard objectives add lculti_skill dummy
scoreboard objectives add lc_ulti_use dummy
scoreboard objectives add lc_absorb dummy
scoreboard objectives add lc_absorb_use dummy
scoreboard objectives add lc_abs_taker dummy
scoreboard objectives add lc_throw minecraft.used:minecraft.trident
scoreboard objectives add lc_thrower dummy
scoreboard objectives add lc_th_ready dummy
scoreboard objectives add lc_give dummy
scoreboard objectives add shield_block minecraft.used:minecraft.shield

scoreboard objectives add cp_start trigger
scoreboard objectives add cp_help trigger
scoreboard objectives add cp_slayer trigger
scoreboard objectives add cp_tanker trigger
scoreboard objectives add cp_archer trigger
scoreboard objectives add cp_nuker trigger
scoreboard objectives add cp_lancer trigger
scoreboard objectives add cp_get_red trigger
scoreboard objectives add cp_get_blue trigger

scoreboard players set @a sl_potion 0
scoreboard players set @a sl_slow 0
scoreboard players set @a slayer_skill 0
scoreboard players set @a tanker_skill 0
scoreboard players set @a tanker_skill_use 0
scoreboard players set @a nuker_skill 0
scoreboard players set @a pearl_skill 0
scoreboard players set @a archer_skill 0
scoreboard players set @a poison_skill 0
scoreboard players set @a lc_absorb 0
scoreboard players set @a lc_absorb_use 0
scoreboard players set @a lc_abs_taker 0
scoreboard players set @a lculti_skill 0
scoreboard players set @a lc_ulti_use 0
scoreboard players set @a lc_throw 0
scoreboard players set @a lc_thrower 0
scoreboard players set @a lc_th_ready 0
scoreboard players set @a lc_give 0
scoreboard players set @a shield_block 0

# else

gamerule commandBlockOutput false
gamerule doWeatherCycle true

scoreboard objectives add lees_only dummy
scoreboard objectives add give_slayer dummy
scoreboard objectives add give_tanker dummy

function roadofcircle_one:init

scoreboard objectives add welcomeM minecraft.custom:minecraft.leave_game
function rpgslayer_sche:second_loop/secondloop