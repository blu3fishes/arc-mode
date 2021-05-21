# Auto Mob Summoner

# Input mob's namespace, summon command.

# Output mob summon file in ./functions/mobs/mobname.mcfunction
# Append mob summon command 
# e.g. (execute as @e[type=enderman,tag=!check,sort=random] at @s run function arc_mobs:mobs/enderman) 
# in ./functions/set_mob.mcfunction

## Import
import os
from tkinter import *
import tkinter
## Definition
def createFolder(directory):
    try:
        if not os.path.exists(directory):
            os.makedirs(directory)
    except OSError:
        print ('Error: Creating directory. ' +  directory)

def makeMobFeature():
    '''
    add tags if the mob has advanced attribute.
    '''
def makeFiles(): 
    NameBuf = input("Function name? : ")
    NameSpaceBuf = input("Input NameSpace e.g. arc_mode etc..  : ")
    print("")
    SpaceBuf = input("Input Folder Name e.g. level_one (Press Enter If none.): ")
    print("\nInput Summon Command (e.g. summon ~ ~ ~ creeper{...}")
    CmdBuf = input("Should be like e.g. : ")

    createFolder('./functions')
    createFolder("./functions/mobs/")
    createFolder('./functions/mobs/SpaceBuf')

    MobNameEnd = int(-1)
    for i in range(0, len(CmdBuf)):
        if CmdBuf[i] == '{':
            MobNameEnd = i + 1
            break
    if MobNameEnd == -1:
        MobNameEnd = len(CmdBuf)

    MobName = CmdBuf[13:MobNameEnd]

    if SpaceBuf != '':
        SpaceBuf = SpaceBuf + '/'

    set_mob = open('./functions/set_mob.mcfunction', mode="at", encoding="utf-8")
    set_mob.write("execute as @e[type=%s,tag=!check,sort=random] at @s run function %s:mobs/%s%s\n" %(MobName, NameSpaceBuf, SpaceBuf, NameBuf))
    set_mob.close()

    mob_file = open('./functions/mobs/%s%s.mcfunction' %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
    mob_file.write("""tp @e[type=chicken,tag=!check] ~ ~-400 ~\n""")
    # find {, and append the Tag which name is 'check'.
    # add Tag if the mob is advanced mob. this will be come with radio checkbox.
    #summon chicken ~ ~ ~ {Tags:["check"],Attributes:[{Name:generic.max_health,Base:16},{Name:generic.movement_speed,Base:0.3}]}""")
    mob_file.close()

mainWindow = Tk()