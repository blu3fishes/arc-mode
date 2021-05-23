# Variables For Items
scoreboard objectives add arc.UsedGhastSE minecraft.used:ghast_spawn_egg
scoreboard players set @a arc.UsedGhastSE 0
execute as @a run function arc_item_base:reset_players
function arc_item_base:second_loop