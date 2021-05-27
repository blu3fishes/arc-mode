# Auto Mob Summoner

# Input mob's namespace, summon command.

# Output mob summon file in ./functions/mobs/mobname.mcfunction
# Append mob summon command 
# e.g. (execute as @e[type=enderman,tag=!check,sort=random] at @s run function arc_mobs:mobs/enderman) 
# in ./functions/set_mob.mcfunction

# Pls Fix
#  -[x] 1. The CustomName Should Be Look Like More User-Friendly
#  -[ ] 2. Optimize The Function With mobname/process function.

## Import
import os
from tkinter import *
import tkinter as ttk
## Definition
def createFolder(directory):
    try:
        if not os.path.exists(directory):
            os.makedirs(directory)
    except OSError:
        print ('Error: Creating directory. ' +  directory)

def addMobNbt(file, NameSpaceBuf, SpaceBuf, NameBuf, FixedNameBuf, FeatureVal):
    # adds Feature Tag.
    if FeatureVal == 0:
        file.write("]")
    elif FeatureVal == 1:
        file.write(", \"NotArmor\"],DeathLootTable:\"%s:%s%s\",CustomNameVisible:1b,CustomName:\'[{\"text\":\"Armored\",\"color\":\"blue\",\"bold\":false,\"italic\":false},{\"text\":\" %s\",\"bold\":false,\"italic\":false,\"color\":\"white\"}]\'" %(NameSpaceBuf, SpaceBuf, NameBuf, FixedNameBuf))
    elif FeatureVal == 2:
        file.write(", \"NotAntiMagic\"],DeathLootTable:\"%s:%s%s\",CustomNameVisible:1b,CustomName:\'[{\"text\":\"AntiMagic\",\"color\":\"red\",\"bold\":false,\"italic\":false},{\"text\":\" %s\",\"bold\":false,\"italic\":false,\"color\":\"white\"}]\'" %(NameSpaceBuf, SpaceBuf, NameBuf, FixedNameBuf))
    elif FeatureVal == 3:
        file.write(", \"NotPoisoning\"],DeathLootTable:\"%s:%s%s\",CustomNameVisible:1b,CustomName:\'[{\"text\":\"Poisoning\",\"color\":\"green\",\"bold\":false,\"italic\":false},{\"text\":\" %s\",\"bold\":false,\"italic\":false,\"color\":\"white\"}]\'" %(NameSpaceBuf, SpaceBuf, NameBuf, FixedNameBuf))
    elif FeatureVal == 4:
        file.write(", \"NotLightened\"],DeathLootTable:\"%s:%s%s\",CustomNameVisible:1b,CustomName:\'[{\"text\":\"Lightened\",\"color\":\"yellow\",\"bold\":false,\"italic\":false},{\"text\":\" %s\",\"bold\":false,\"italic\":false,\"color\":\"white\"}]\'" %(NameSpaceBuf, SpaceBuf, NameBuf, FixedNameBuf))

def addMobName(NameBuf, FeatureVal):
    # adds Feature Name
    if FeatureVal == 0:
        return NameBuf
    elif FeatureVal == 1:
        return NameBuf + '_armored'
    elif FeatureVal == 2:
        return NameBuf + '_antimagic'
    elif FeatureVal == 3:
        return NameBuf + '_poison'
    elif FeatureVal == 4:
        return NameBuf + '_lightened'

def processFunction(file, NameSpaceBuf, SpaceBuf, NameBuf):
    # modify summon command by FeatureVal
    # execute as @e[type=%s,tag=!check,sort=random,limit=1]")
    file.write("\nexecute if score Random48 arc.Random matches ..43 run execute at @s run function %s:mobs/%s%s\n" %(NameSpaceBuf, SpaceBuf, NameBuf))
    file.write("execute if score Random48 arc.Random matches 44 run execute at @s run function %s:mobs/%s%s_antimagic\n" %(NameSpaceBuf, SpaceBuf, NameBuf))
    file.write("execute if score Random48 arc.Random matches 45 run execute at @s run function %s:mobs/%s%s_armored\n" %(NameSpaceBuf, SpaceBuf, NameBuf))
    file.write("execute if score Random48 arc.Random matches 46 run execute at @s run function %s:mobs/%s%s_lightened\n" %(NameSpaceBuf, SpaceBuf, NameBuf))
    file.write("execute if score Random48 arc.Random matches 47 run execute at @s run function %s:mobs/%s%s_poison\n" %(NameSpaceBuf, SpaceBuf, NameBuf))

def createMain(NameSpaceBuf, SpaceBuf, NameBuf, CmdBuf, HasFeature):
    if HasFeature == 0:
        createMob(NameSpaceBuf, SpaceBuf, NameBuf, CmdBuf, 0, HasFeature)
        return
    for i in range(0, 5):
        # 0. Normal / 1. Armored / 2. AntiMagic / 3. Poisoning / 4. Lightened
        createMob(NameSpaceBuf, SpaceBuf, NameBuf, CmdBuf, i, HasFeature)

def createMob(NameSpaceBuf, SpaceBuf, NameBuf, CmdBuf, FeatureVal, HasFeature): 
    FixedMobName = NameBuf.replace("_", " ")
    NameBuf = addMobName(NameBuf, FeatureVal)
    createFolder('./functions')
    createFolder("./functions/mobs/")
    if SpaceBuf != "":
        createFolder('./functions/mobs/%s' %(SpaceBuf))

    MobNameEnd = int(-1)
    BraketStart = int(-1)
    for i in range(0, len(CmdBuf)):
        if CmdBuf[i] == '{':
            MobNameEnd = i - 7 # summon 'mobname' ~ ~ ~ {
            BraketStart = i
            break
    if MobNameEnd == -1: # summon 'mobname' ~ ~ ~
        MobNameEnd = len(CmdBuf) - 6

    MobName = CmdBuf[7:MobNameEnd]

    if SpaceBuf != '':
        SpaceBuf = SpaceBuf + '/'


    #File Writing In Set_mob
    set_mob = open('./functions/set_mob_one.mcfunction', mode="at", encoding="utf-8")
    if HasFeature == 0:
        set_mob.write("\nexecute as @e[tag=!Check,type=%s,limit=1] at @s run function %s:mobs/%s%s" %(MobName, NameSpaceBuf, SpaceBuf, NameBuf))
    else:
        if FeatureVal == 0:
            set_mob.write("\nexecute at @a[sort=arbitrary,limit=1] run function arc_system:get_random/get_random")
            set_mob.write("\nexecute as @e[tag=!Check,type=%s,limit=1] run function arc_mob_base:mobs/%sprocess" %(MobName, SpaceBuf))
    set_mob.close()

    if HasFeature == 1 and FeatureVal == 0:
        process = open("./functions/mobs/%sprocess.mcfunction" %(SpaceBuf), mode="wt", encoding="utf-8")
        processFunction(process, NameSpaceBuf, SpaceBuf, NameBuf)
        process.close()
    
    #File Writing In Mob Summon File
    mob_file = open('./functions/mobs/%s%s.mcfunction' %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
    # find {, and append the Tag which name is 'check'.
    mob_file.write("summon %s ~ ~ ~ {Tags:[\"Check\"" %(MobName))
    # add Tag if the mob is advanced mob.
    addMobNbt(mob_file, NameSpaceBuf, SpaceBuf, NameBuf, FixedMobName, FeatureVal)
    # write Remainders.
    if BraketStart == -1:
        mob_file.write("}")
    else:
        mob_file.write(",%s" %(CmdBuf[BraketStart+1:]))
    mob_file.write("""\ntp @s ~ ~-400 ~\ntag @s add Check""")
    mob_file.close()

    #File Writing Sequence At Loot Table.
    #loot table Adding...
    createFolder('./loot_tables')
    if SpaceBuf != '':
        createFolder('./loot_tables/%s' %(SpaceBuf))
    table_file = open('./loot_tables/%s%s.json' %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
    # I need to Unzip Minecraft Resources.
    if FeatureVal == 0:
        table_file.write("""{
    "pools": [
        {
            "type":"minecraft:generic",
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "weight": 1,
                    "name": "arc_mob_base:level"
                }
            ]
        },
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "weight": 1,
                    "name": "minecraft:entites/%s"
                }
            ]
        }
    ]
}""" %(MobName))
    else:
        table_file.write("""{
    "pools": [
        {
            "type":"minecraft:generic",
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "weight": 1,
                    "name": "arc_mob_base:level"
                }
            ]
        },
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "weight": 1,
                    "name": "arc_mob_base:adv"
                }
            ]
        },
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "loot_table",
                    "weight": 1,
                    "name": "minecraft:entites/%s"
                }
            ]
        }
    ]
}""" %(MobName))
    table_file.close()
    ## SEQUENCE END


mainWindow = Tk()
mainWindow.title("blu3fishez Replace Mob Command Generator")
mainWindow.geometry("500x400")
lbl = Label(mainWindow, text="이름 공간(arc_system)")
lbl.place(x = 10, y= 10)
lbl = Label(mainWindow, text="폴더 이름공간(tiger etc..)")
lbl.place(x = 10, y= 50)
lbl = Label(mainWindow, text="몹 이름 반드시 소문자로 표현, 공백은 불가능 (skeleton_warrior etc..)")
lbl.place(x = 10, y= 90)
lbl = Label(mainWindow, text="summon 커맨드(스켈레톤류는 반드시 활 장착시키고 소환)(summon 몹이름 ~ ~ ~ {..}")
lbl.place(x = 10, y= 130)
lbl = Label(mainWindow, text="주의 : Tags NBT가 있으면 잘못된 커맨드가 저장된다.")
lbl.place(x = 10, y= 150)
CheckVar = IntVar()
CheckBuf = Checkbutton(mainWindow, text="몹 강화 여부", variable=CheckVar)
CheckBuf.place(x = 10, y = 190)

NameSpaceBufTxt = Entry(mainWindow)
NameSpaceBufTxt.place(x = 10, y = 30)
SpaceBufTxt = Entry(mainWindow)
SpaceBufTxt.place(x = 10, y = 70)
NameBufTxt = Entry(mainWindow)
NameBufTxt.place(x = 10, y =110)
CmdBufTxt = Entry(mainWindow)
CmdBufTxt.place(x=10, y=170)

btn = ttk.Button(mainWindow, text="제작하기", command= lambda : createMain(NameSpaceBufTxt.get(), SpaceBufTxt.get(), NameBufTxt.get(), CmdBufTxt.get(), CheckVar.get()), width=20)
btn.place(x=10, y=250)

# # If you want to Use this program to another datapack, remove below commands.
NameSpaceBufTxt.insert(0, "arc_mob_base")
# SpaceBufTxt.insert(0, "")

# #################
mainWindow.resizable(width = False, height = False)
mainWindow.mainloop()