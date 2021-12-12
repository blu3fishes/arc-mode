## Managing mana & its growth
# execute as @a run function arc_skills:show_mana

# scoreboard players add @a[scores={arc.Mana=200..1999},nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,tag:{magic_book:1b}}]}] arc.Mana 1
# scoreboard players add @a[scores={arc.Mana=..199}] arc.Mana 1

# tag undeads.
## detect hurted mobs
# tag @e[tag=!Hurt,nbt={HurtTime:10s}] add Hurt

## main procedure which is skills, etc..
function arc_skills:custom_ranged/set_projectile

## 라이튼드 몬스터 이펙트
# execute at @e[tag=Lightened] as @a[scores={arc.DmgTaken=1..,arc.Light=0},distance=..7] run scoreboard players set @s arc.Light 40
# scoreboard players remove @a[scores={arc.Light=1..}] arc.Light 1
# execute at @a[scores={arc.Light=39}] run summon lightning_bolt ~ ~ ~

## reset scoreboards.
# scoreboard players remove @a[scores={arc.Hammer=1..}] arc.Hammer 1
# scoreboard players set @a[scores={arc.DmgGiven=1..}] arc.DmgGiven 0
# scoreboard players set @a[scores={arc.DmgTaken=1..}] arc.DmgTaken 0
## reset hurted mobs.
# execute as @e[tag=Hurt,nbt={HurtTime:9s}] run data modify entity @s HurtTime set value 0s
# tag @e[tag=Hurt,nbt={HurtTime:9s}] remove Hurt
## command which want to load after