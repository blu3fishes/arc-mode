kill @e[tag=sdi]

scoreboard objectives remove sdi_chealth
scoreboard objectives remove sdi_lhealth
scoreboard objectives remove sdi_cabsorption

scoreboard objectives remove sdi_d_lifetime

scoreboard objectives remove sdi_d_alifetime
scoreboard objectives remove sdi_d_slowfall
scoreboard objectives remove sdi_d_pvpmode

tellraw @s [{"text":"Simple Damage Indicator uninstalled! All scoreboard objectives were removed. To prevent the datapack from re-adding the scoreboards objectives, close your world and remove the datapack from the folder.","color":"yellow"},{"text":" If you start/reload the world without removing it, the datapack will automatically put back all scoreboard objectives.","color":"gold"},{"text":" You don't have to worry about that if you don't mess with commands or care about garbage scoreboards","color":"gray"}]
