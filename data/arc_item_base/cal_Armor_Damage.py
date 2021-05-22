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