
import ast
import sys

args = sys.argv



boats = ast.literal_eval(args[1])
distances = ast.literal_eval(args[2])
max_loc = int(args[3])
cont = args[-1]

print("(define (problem sailing)")

print("(:domain sailing)")

print("(:objects ")

for i in range(len(boats)):
    print(f"\tboat{i//2} - boat")

for i in range(len(distances)):
    print(f"\tperson{i} - person")

print(")")

print("(:init")


for n,i in enumerate(boats):
    if n%2 == 0:
        print(f"\t(= (x boat{n//2}) {i})")
    else:
        print(f"\t(= (y boat{n//2}) {i})")

for n,i in enumerate(distances):
    print(f"\t(= (d person{n}) {i})")

print(f"\t(= (min_x) {-max_loc})")
print(f"\t(= (min_y) {-max_loc})")
print(f"\t(= (max_x) {max_loc})")
print(f"\t(= (max_y) {max_loc})")

print(f"\t(= (lower_bound) 1)")
print(f"\t(= (upper_bound) 10)")
print(f"\t(= (delta) 1)")

if cont == 'C':
    print(f"\t(= (precision) 1)")

print(")")

print("(:goal (and")

for i in range(len(distances)):
    print(f"\t(saved person{i})")

print("))")

print(")")
