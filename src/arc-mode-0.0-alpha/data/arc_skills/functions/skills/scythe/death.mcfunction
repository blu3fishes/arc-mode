loot spawn ~ ~ ~ kill @s
execute if predicate arc_mob_base:registered at @s run loot spawn ~ ~ ~ loot arc_mob_base:level_scythe
execute if entity @s[tag=LootAdv] if predicate arc_mob_base:registered at @s run loot spawn ~ ~ ~ loot arc_mob_base:adv_scythe