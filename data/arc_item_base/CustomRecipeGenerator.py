# Custom Item Generator with Recipe.

# input the MCSTACKER GIVE COMMAND & NameSpace(NONE Means no namespace)

# output into recipe/advancement/reset recipe & give item command mcfunction file.

## Import
import os
## Definition
def createFolder(directory):
    try:
        if not os.path.exists(directory):
            os.makedirs(directory)
    except OSError:
        print ('Error: Creating directory. ' +  directory)
## Main Function
NameSpaceBuf = input("Input Namespace e.g. ni, rpgplayer etc... : ")
print("")
SpaceBuf = input("Input Folder_NameSpace Here (input nothing to have no folder namespace.)\n e.g. platinum etc.. :")
print("")
if SpaceBuf == "":
    SpaceBuf = ''
else:
    SpaceBuf = "/" + SpaceBuf
NameBuf = "/" + input("Input ItemName Here e.g. platinum_axe etc.. : ")
print("")
CmdBuf = input("Input Give Command Here : ")
print("")
funcSpaceBuf = "/" + input("Input Additional Function Space Buffer (default : give_items, Put 1 Spacebar to remove.):")
print("")
if funcSpaceBuf == "/":
    funcSpaceBuf = "/give_items"
createFolder('./recipes')
DirBuffer = './recipes' + SpaceBuf
createFolder(DirBuffer)
recipeFile = open("./recipes%s%s.json" %(SpaceBuf, NameBuf), "wt", encoding="utf-8")
# 레시피도 사전(키값에 해당하는 아이템), 집합(키값 정렬), 이용하면 레시피도 입력받아서 생성 가능하니 참고할것.
print("=============== Input RECIPES ===============================")
print("e.g. input : '###   ###' means")
print("###\n   \n###")
while True:
    recipeInput = input("Input Recipe (Should be 9 character String.): ")
    if len(recipeInput) != 9:
        input("## YOU SHOULD INPUT 9 CHARACTER STRING \n try again or did you input correctly? \n Press any key to continue...")
    elif len(recipeInput) == 9:
        break
print("")
recipeIcons = set(recipeInput)
iconMeans = {}
for i in recipeIcons:
    if i == ' ':
        continue
    print("What %c Mean? (input full item code here 'ex: diamonds, iron_ingot etc..): " %(i), end="")
    temp = input("")
    print("")
    iconMeans[i] = temp
print("__________ PROCESSING !!! _______")
print("Writing Recipe Pattern...")
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
print("Writing Recipe Keys...")
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
print("recipe done...")
createFolder('./advancements')
DirBuffer = './advancements' + SpaceBuf
createFolder(DirBuffer)
advancementFile = open("./advancements%s%s.json" %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
print("writing advancement...")
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
print("advencement done...")

createFolder("./functions")
DirBuffer = './functions' + funcSpaceBuf
createFolder(DirBuffer)
DirBuffer = DirBuffer + SpaceBuf
createFolder(DirBuffer)
giveFile = open("./functions%s%s%s.mcfunction" %(funcSpaceBuf, SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
print("writing mcfunction...")
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
print("give function done.")
input("Write End. Check folders & files. / Press Any Key To Close Program...")