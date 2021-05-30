scoreboard objectives add arc.Users minecraft.custom:minecraft.leave_game
scoreboard objectives add arc.Userdly dummy
scoreboard players set @a arc.Users 0
tellraw @a {"text":"[ Arc Mode ] Initiated Successfully.","color":"gray","bold":false,"italic":false}