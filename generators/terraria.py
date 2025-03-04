
import ast
import sys

args = sys.argv

goal_bed, goal_ivy, goal_chest, goal_sword = int(args[1]), int(args[2]), int(args[3]), int(args[4])

print("(define (problem terraria)")

print("(:domain terraria)")

print("(:objects ")

print("\tcobweb1 - cobweb iron1 - iron_bar lead1 - lead_bar chain1 - chain platinum1 - platinum_bar")
print("\tsilk1 - silk bed1 - bed sword1 - platinum_sword")
print("\twood1 - wood chest1 - chest MahoganyWood - mahogany_wood IvyChest - ivy_chest")
print("\tHome Workshop Forest MahoganyForest Mine - location")

print(")")

print("(:init")

print("\t(available)")
print(f"\t(= (numeric_goal_bed) {goal_bed})")
print(f"\t(= (numeric_goal_ivy) {goal_ivy})")
print(f"\t(= (numeric_goal_chest) {goal_chest})")
print(f"\t(= (numeric_goal_sword) {goal_sword})")

print("\t(= (stock cobweb1) 0)")
print("\t(= (stock iron1) 0)")
print("\t(= (stock MahoganyWood) 0)")
print("\t(= (stock lead1) 0)")
print("\t(= (stock chain1) 0)")
print("\t(= (stock silk1) 0)")
print("\t(= (stock platinum1) 0)")
print("\t(= (stock bed1) 0)")
print("\t(= (stock sword1) 0)")
print("\t(= (stock chest1) 0)")
print("\t(= (stock wood1) 0)")
print("\t(= (stock IvyChest) 0)")

print("\t(can_assemble Workshop)")
print("\t(can_lumber Forest)")
print("\t(can_lumber_mahogany MahoganyForest)")
print("\t(can_mine Mine)")

print("\t(at Home)")

print("\t(ready_workbench)")
print(")")

print("(:goal (and")

print("\t(placed_swords) (placed_beds) (placed_chests) (placed_ivy_chests)")

print("))")

print(")")
