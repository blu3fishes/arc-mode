# Variables For Items
scoreboard objectives add arc.UsedGhastSE minecraft.used:ghast_spawn_egg
scoreboard objectives add arc.UsedPandaSE minecraft.used:panda_spawn_egg
scoreboard objectives add arc.UsedBlazeSE minecraft.used:blaze_spawn_egg
scoreboard objectives add arc.UsedCatSE minecraft.used:cat_spawn_egg
scoreboard objectives add arc.UsedEvokerSE minecraft.used:evoker_spawn_egg
scoreboard players set @a arc.UsedGhastSE 0

execute as @a run function arc_item_base:reset_players