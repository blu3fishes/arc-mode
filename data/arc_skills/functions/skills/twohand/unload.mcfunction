# REMOVE SWEEPING EDGE 9 !
tag @s remove twohander

execute if entity @s[scores={arc.GreatSword=0}] run function arc_skills:skills/twohand/unload/switch_0
execute if entity @s[scores={arc.GreatSword=1}] run function arc_skills:skills/twohand/unload/switch_1
execute if entity @s[scores={arc.GreatSword=2}] run function arc_skills:skills/twohand/unload/switch_2
execute if entity @s[scores={arc.GreatSword=3}] run function arc_skills:skills/twohand/unload/switch_3
execute if entity @s[scores={arc.GreatSword=4}] run function arc_skills:skills/twohand/unload/switch_4
execute if entity @s[scores={arc.GreatSword=5}] run function arc_skills:skills/twohand/unload/switch_5
execute if entity @s[scores={arc.GreatSword=6}] run function arc_skills:skills/twohand/unload/switch_6
execute if entity @s[scores={arc.GreatSword=7}] run function arc_skills:skills/twohand/unload/switch_7
execute if entity @s[scores={arc.GreatSword=8}] run function arc_skills:skills/twohand/unload/switch_8