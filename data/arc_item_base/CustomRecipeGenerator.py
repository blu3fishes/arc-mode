# Custom Item Generator with Recipe.

# input the MCSTACKER GIVE COMMAND & NameSpace(NONE Means no namespace)

# output into recipe/

SpaceBuf = input("Input NameSpace Here (input NONE to have no namespace.):")
if SpaceBuf == "NONE":
    SpaceBuf = ''
else:
    SpaceBuf = "\\" + SpaceBuf
NameBuf = "\\" + input("Input Name Here : ")
CmdBuf = input("Input String Here : ")

recipeFile = open("recipes%s%s" %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
# 레시피도 사전(키값에 해당하는 아이템), 집합(키값 정렬), 이용하면 레시피도 입력받아서 생성 가능하니 참고할것.
recipeFile.write("""{
    \"type\": \"minecraft:crafting_shaped\",
    \"pattern\": [
        \" # \",
        \"#$#\",
        \" # \"
    ],
    \"key\": {
        \"#\": {
            "item": "minecraft:iron_ingot"
        },
        \"$\":{
            "tag":"minecraft:planks"
        }
    },
    \"result\": {
        \"item\": \"minecraft:knowledge_book\"
    }
}""" )
recipeFile.close("""{
    "__comment": "Made with blu3fishes' Custom Item Generator With Recipes",
    "criteria": {
        "unlock": {
            "trigger": "minecraft:recipe_unlocked",
            "conditions": {
                "recipe": "arc_item_base:bucler_shield"
            }
        }
    },
    "rewards": {
        "function": "arc_item_base:give_items/bucler_shield"
    }
}
""")

advancementFile = open("advancements%s%s" %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")
advancementFile.write()
advancementFile.close()
giveFile = open("functions\\give_items%s%s" %(SpaceBuf, NameBuf), mode="wt", encoding="utf-8")