# Scythe Weapons give Additional Damage with Magic.
# Platinum Scythe : give 1 level additional damage (6)
# Diamond Scythe : give 2 level additional damage (12)

###################################### move thes to distinct function files.
# Platinum Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=300..},nbt={SelectedItem:{tag:{CustomModelData:700013}}}] run function arc_skills:skills/scythe/platinum
# Diamond Scythe Skill
execute as @a[scores={arc.DmgGiven=1..,arc.Mana=300..},nbt={SelectedItem:{tag:{CustomModelData:700030}}}] run function arc_skills:skills/scythe/diamond