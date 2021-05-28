tellraw @a[scores={arc.NewUser=1}] "Welcome New"
# give Players Starter Item.
scoreboard players set @a[scores={arc.NewUser=1}] arc.NewUser 2
tellraw @a[scores={arc.NewUser=3}] "Welcome Old"
scoreboard players set @a[scores={arc.NewUser=3..}] arc.NewUser 2