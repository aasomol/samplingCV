
import ast
import sys

args = sys.argv

if len(args) != 9:
    print("Wrong usage")
    exit(-1)

suppliers = int(args[1])
customers = int(args[2])
workshops = int(args[3])
can_produce = ast.literal_eval(args[4])
can_supply = ast.literal_eval(args[5])
at = int(args[6])
item_goal = ast.literal_eval(args[7])
to_deliver = ast.literal_eval(args[8])

print("(define (problem procurement)")

print("(:domain procurement)")

letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S']

print("(:objects ")

for i in letters:
    print(f"\t{i} - item{i}")

for i in range(suppliers):
    print(f"\tsupplier{i} - supplier")

for i in range(customers):
    print(f"\tcustomer{i} - customer")

for i in range(workshops):
    print(f"\tworkshop{i} - workshop")

print(")")

print("(:init")

print("\t(available)")

for n,i in enumerate(can_produce):
    if i >= 0:
        print(f"\t(can_produce_{letters[n]} workshop{i})")

for n,i in enumerate(can_supply):
    if i >= 0:
        print(f"\t(can_supply_{letters[n]} supplier{i-workshops})")

if at < workshops:
    print(f"\t(at workshop{at})")
elif at < workshops + suppliers:
    print(f"\t(at supplier{at-workshops})")
else:
    print(f"\t(at customer{at-workshops-suppliers})")

for i in letters:
    print(f"\t(= (stock {i}) 0)")

for n,i in enumerate(item_goal):
    print(f"\t(= (item-goal {letters[n]}) {i})")


print(")")

print("(:goal (and")

for n,i in enumerate(to_deliver):
    print(f"\t(delivered {letters[i]} customer{n})")

print("))")

print(")")
