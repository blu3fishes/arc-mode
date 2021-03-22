# initialization
data modify entity @s Offers.Recipes set value {}
data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Ancient Smith"}'}

data modify entity @s Offers.Recipes append value {buy:{id:stone,Count:3},buyB:{id:bow,Count:1},sell:{id:bow,Count:1,tag:{CustomModelData:701,display:{Name:'{"text":"Stone Bow","italic":"false"}'}}},maxUses:2}
tag @s add toolsmith_lvl1