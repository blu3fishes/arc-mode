# Custom Item Generator with Recipe.

# input the MCSTACKER GIVE COMMAND & NameSpace(NONE Means no namespace)

# output into recipe/advancement/reset recipe & give item command mcfunction file.

## Import
from tkinter import ttk
from tkinter import *
import tkinter.simpledialog
import tkinter.messagebox
import os
## Definition
def createFolder(directory):
    try:
        if not os.path.exists(directory):
            os.makedirs(directory)
    except OSError:
        print ('Error: Creating directory. ' +  directory)
## Main Function

def createMain(NameSpaceBuf, SpaceBuf, NameBuf, CmdBuf, funcSpaceBuf):
    if SpaceBuf == "":
        SpaceBuf = ''
    else:
        SpaceBuf = "/" + SpaceBuf
    NameBuf = "/" + NameBuf
    funcSpaceBuf = "/" + funcSpaceBuf
    #print("")
    if funcSpaceBuf == "/":
        funcSpaceBuf = "/give_items"
    createFolder('./recipes')
    DirBuffer = './recipes' + SpaceBuf
    createFolder(DirBuffer)
    recipeFile = open("./recipes%s%s.json" %(SpaceBuf, NameBuf), "wt", encoding="utf-8")
    # 레시피도 사전(키값에 해당하는 아이템), 집합(키값 정렬), 이용하면 레시피도 입력받아서 생성 가능하니 참고할것.
    # Try Message Box.
    tkinter.messagebox.showinfo("레시피를 입력해주세요.", "\n'###   ###'는, \n###\n   \n### 를 의미합니다.")
    while True:
        recipeInput = tkinter.simpledialog.askstring("레시피 입력", "9자리로 입력해주세요.")
        if len(recipeInput) != 9:
            tkinter.messagebox.showinfo("에러", "9자리로 입력해주세요...")
        elif len(recipeInput) == 9:
            break
    #print("")
    recipeIcons = set(recipeInput)
    iconMeans = {}
    for i in recipeIcons:
        if i == ' ':
            continue
        # Try Message Box.
        temp = tkinter.simpledialog.askstring("레시피 기호 입력", "%c는 무슨 아이템인가요? ex. iron_ingot" %(i))
        #print("")
        iconMeans[i] = temp
    #print("__________ PROCESSING !!! _______")
    #print("Writing Recipe Pattern...")
    recipeUpper = recipeInput[0:3]
    recipeMiddle = recipeInput[3:6]
    recipeLower = recipeInput[6:9]
    # 오른쪽라인 하나
    if recipeUpper[2] == recipeMiddle[2] == recipeLower[2] == ' ':
        recipeUpper = recipeUpper[:2]
        recipeMiddle = recipeMiddle[:2]
        recipeLower = recipeLower[:2]
    # 왼쪽 라인 하나
    if recipeUpper[0] == recipeMiddle[0] == recipeLower[0] == ' ':
        recipeUpper = recipeUpper[1:]
        recipeMiddle = recipeMiddle[1:]
        recipeLower = recipeLower[1:]
    # 아랫쪽 라인 하나
    if recipeUpper == " " or recipeUpper == '  ' or recipeUpper == '   ':
        recipeUpper = None
    # 윗쪽 라인 하나
    if recipeLower == ' ' or recipeLower == '  ' or recipeLower == '   ':
        recipeLower = None
    recipeList = [recipeUpper, recipeMiddle, recipeLower]
    if recipeUpper == None:
        recipeList = recipeList[1:]
    if recipeLower == None:
        recipeList = recipeList[:2]
    for i in range(0, len(recipeList)):
        recipeList[i] = '"' + recipeList[i] + '"'
        if(i != 0):
            recipeList[i] = '\n\t\t' + recipeList[i]
        if i != len(recipeList) - 1:
            recipeList[i] = recipeList[i] + ','
    recipeString = str()
    for i in recipeList:
        recipeString += i
    recipeFile.write("""{
        \"type\": \"minecraft:crafting_shaped\",
        \"pattern\": [
            %s
        ],
        \"key\": {""" %(recipeString))
    #print("Writing Recipe Keys...")
    iconCount = 0
    recipeIcons.remove(" ")
    for i in recipeIcons:
        iconCount += 1
        recipeFile.write("""
                \"%c\": {
                    "item": "minecraft:%s"
                }""" %(i, iconMeans[i]))
        if len(recipeIcons) != iconCount:
            recipeFile.write(",")
    recipeFile.write("""
        },
        \"result\": {
            \"item\": \"minecraft:knowledge_book\"
        }
    }""")
    recipeFile.close()
    #print("recipe done...")
    createFolder('./advancements')
    DirBuffer = './advancements' + SpaceBuf
    createFolder(DirBuffer)
    advancementFile = open("./advancements%s%s.json" %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
    #print("writing advancement...")
    if SpaceBuf != '':
        advancementFile.write("""{
        "__comment": "Made with blu3fishes' Custom Item Generator With Recipes",
        "criteria": {
            "unlockRecipe": {
                "trigger": "minecraft:recipe_unlocked",
                "conditions": {
                    "recipe": "%s:%s%s"
                }
            }
        },
        "rewards": {
            "function": "%s:%s%s%s"
        }
    }""" %(NameSpaceBuf, SpaceBuf[1:], NameBuf, NameSpaceBuf, SpaceBuf[1:], funcSpaceBuf, NameBuf))
    else:
        advancementFile.write("""{
        "__comment": "Made with blu3fishes' Custom Item Generator With Recipes",
        "criteria": {
            "unlockRecipe": {
                "trigger": "minecraft:recipe_unlocked",
                "conditions": {
                    "recipe": "%s:%s"
                }
            }
        },
        "rewards": {
            "function": "%s:%s%s"
        }
    }""" %(NameSpaceBuf, NameBuf[1:], NameSpaceBuf, funcSpaceBuf, NameBuf))
    advancementFile.close()
    #print("advencement done...")

    createFolder("./functions")
    DirBuffer = './functions' + funcSpaceBuf
    createFolder(DirBuffer)
    DirBuffer = DirBuffer + SpaceBuf
    createFolder(DirBuffer)
    giveFile = open("./functions%s%s%s.mcfunction" %(funcSpaceBuf, SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
    #print("writing mcfunction...")
    if SpaceBuf != '':
        giveFile.write("""recipe take @s %s:%s%s
    advancement revoke @s only %s:%s%s
    clear @s minecraft:knowledge_book
    %s""" %(NameSpaceBuf, SpaceBuf[1:], NameBuf, NameSpaceBuf, SpaceBuf[1:], NameBuf, CmdBuf))
    else:
        giveFile.write("""recipe take @s %s:%s
    advancement revoke @s only %s:%s
    clear @s minecraft:knowledge_book
    %s""" %(NameSpaceBuf, NameBuf, NameSpaceBuf, NameBuf, CmdBuf))
    giveFile.close()
    #print("give function done.")
    #input("Write End. Check folders & files. / Press Any Key To Close Program...")

mainWindow = Tk()
mainWindow.title("blu3fishez Custom Recipe Generator")
mainWindow.geometry("500x400")
lbl = Label(mainWindow, text="이름 공간(arc_system)")
lbl.place(x = 10, y= 10)
lbl = Label(mainWindow, text="폴더 이름공간(diamond etc..)")
lbl.place(x = 10, y= 50)
lbl = Label(mainWindow, text="아이템 이름(platinum_axe etc..)")
lbl.place(x = 10, y= 90)
lbl = Label(mainWindow, text="give 커맨드(give @s 로 시작하는 커맨드.")
lbl.place(x = 10, y= 130)
lbl = Label(mainWindow, text="함수 전용 이름공간(give_items etc.. 없을경우 give_items")
lbl.place(x = 10, y= 170)
NameSpaceBufTxt = Entry(mainWindow)
NameSpaceBufTxt.place(x = 10, y = 30)
SpaceBufTxt = Entry(mainWindow)
SpaceBufTxt.place(x = 10, y = 70)
NameBufTxt = Entry(mainWindow)
NameBufTxt.place(x = 10, y =110)
CmdBufTxt = Entry(mainWindow)
CmdBufTxt.place(x=10, y=150)
funcSpaceBuf = Entry(mainWindow)
funcSpaceBuf.place(x=10, y=190)
#def BtnClick():
#    createMain(NameBufTxt.get(), SpaceBufTxt.get(), NameBufTxt.get(), CmdBufTxt.get(), funcSpaceBuf.get())
btn = ttk.Button(mainWindow, text="제작하기", command= lambda : createMain(NameBufTxt.get(), SpaceBufTxt.get(), NameBufTxt.get(), CmdBufTxt.get(), funcSpaceBuf.get()), width=20)
btn.place(x=10, y=220)
mainWindow.mainloop()