# Scythe Weapons give Additional Damage with Magic.
# Platinum Scythe : give 1 level additional damage (6)
# Diamond Scythe : give 2 level additional damage (12)

###################################### move thes to distinct function files.
# Platinum Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=100..},nbt={SelectedItem:{tag:{CustomModelData:700013}}}] run function arc_skills:skills/scythe/platinum
# Diamond Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=100..},nbt={SelectedItem:{tag:{CustomModelData:700030}}}] run function arc_skills:skills/scythe/diamond
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=50..},nbt={SelectedItem:{tag:{CustomModelData:700020}}}] run function arc_skills:skills/scythe/ice/ice_freeze
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=100..},nbt={SelectedItem:{tag:{CustomModelData:700044}}}] run function arc_skills:skills/scythe/cryob/directory
execute as @e[scores={arc.Ice=1}] run function arc_skills:skills/scythe/ice/ice_stun
execute as @e[scores={arc.Ice=2}] run function arc_skills:skills/scythe/ice/ice_break
scoreboard players remove @e[scores={arc.CryobScy=1..}] arc.CryobScy 1
execute as @e[scores={arc.CryobScy=1}] run function arc_skills:skills/scythe/cryob/cryob_double
# execute store result score @s arc.NowHealth run data get entity @s Health
# execute store result entity @s Health float 1 run scoreboard players remove @s arc.NowHealth 15