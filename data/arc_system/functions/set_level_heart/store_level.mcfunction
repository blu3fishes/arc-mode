#set_Level
execute as @a run function arc_system:set_level_heart/force_level

#set_Heart
execute as @a run function arc_system:set_level_heart/set_health

#set if Health > maxHealth.

# arc.Health : actual health.
# arc.MaxHeart : modified Max Health
execute as @a run function arc_system:set_level_heart/mod_health

execute as @a[scores={arc.OnDeath=1..}] run function arc_system:set_level_heart/on_death