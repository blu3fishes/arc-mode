# Arc_Item_Base

It saves all of the items and their recipe & Advancement.

# Armor Setting
calculate proper set armor's defense point & armor Toughness Through cal_Armor_Damage.py

# Then How to Calculate Proper Defense Point & Armor Toughness
## 1. Find Normal Mob Damage Which Player can bear
But You Should AWARE, Defense Can Only Reduce Damage by 80%

(e.g 12)
## 2. Find Mob Damage Through Armor
(e.g 6)

You can Find proper defense point & toughness point through this python program
## 3. Set the Max Health Point when you wear robe (e.g 30)
And Find the ratio of Normal Damage With Bare Damage (e.g. 12/20 = 3/10)

Find the Mob Damage Through Robe (e.g 30*3/10 = 9)

Finally Find the Proper Defense Point of Robe through this python program

### **Yes. You found the proper defense point & Armor**

## 4. Finally, Divide The Points into each armor's parts.

#### head = 5/5+8+7+4 = 5/24

#### chest = 8/24 = 1/3
#### leg = 7/24 = 7/24
#### feet = 4/24 = 1/6
- - -
Magic Armor has negative armor points, but has Lots of Healths.

Normal Armor has positive armor points, but has Lower Healths(Even Negate Max Health Point.)