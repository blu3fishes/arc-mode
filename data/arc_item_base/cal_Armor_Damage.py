dmg = (10.0, 20.0, 30.0, 40.0, 50.0, 100.0, 150.0, 200.0, 1000.0)
print("cal reduced dmg which is", end="")
for t in dmg:
    print(" %.0f" %(t), end="")
print(" return Reduced amount ratio")
defensePoint = float(input("input defense point : "))
armorTough = float(input("input toughness point : "))
if armorTough == 0.0:
    ratio = lambda dmg : 1-(min(20, defensePoint/5))/25
elif armorTough != 0.0:
    ratio = lambda dmg : 1-(min(20, max(defensePoint/5, defensePoint - 4*dmg/armorTough + 8)))/25

print("=========================================================")
print("======================= ratio rate ======================")
print("input: mob's damage / output : damage which player takes.")
print("input  |", end='')
for t in dmg:
    print("%-10.3f" %(t), end=" | ")
print("")
print("output |", end='')
for t in dmg:
    print("%-10.3f" %(t*ratio(t)), end=" | ")
print("\n HEAD : %3.2f/%3.2f" %(defensePoint*5/24,armorTough*5/24))
print(" CHEST : %3.2f/%3.2f" %(defensePoint/3,armorTough/3))
print(" LEG : %3.2f/%3.2f" %(defensePoint*7/24,armorTough*7/24))
print(" FEET : %3.2f/%3.2f" %(defensePoint/6,armorTough/6))

input("Paused...")
