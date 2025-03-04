
import ast
import sys

args = sys.argv


at_elevators = ast.literal_eval(args[1])
at_people = ast.literal_eval(args[2])
max_floor = int(args[3])
final_pos = ast.literal_eval(args[4])
cont = args[-1]

print("(define (problem elevators)")

print("(:domain disc_elevators)")

print("(:objects ")

for i in range(len(at_people)):
    print(f"\tp{i} - person")

for i in range(len(at_elevators)):
    print(f"\te{i} - elevator")

print(")")

print("(:init")

print(f"\t(= (max_floor) {max_floor})")

for n,i in enumerate(at_people):
    print(f"\t(= (at_person p{n}) {i})")
    print(f"\t(outside p{n})")

for n,i in enumerate(at_elevators):
    print(f"\t(= (at_elevator e{n}) {i})")

print(f"\t(= (delta) 1)")
print(f"\t(= (lower_bound) 1)")
print(f"\t(= (upper_bound) {max_floor})")

if cont == 'C':
    print(f"\t(= (precision) 1)")

print(")")

print("(:goal (and")

if cont == 'C':
    for n,i in enumerate(final_pos):
        print(f"\t(<= (- (at_person p{n}) {i}) 0.2)")
        print(f"\t(>= (- {i} (at_person p{n})) 0.2)")
        print(f"\t(outside p{n})")

else:
    for n,i in enumerate(final_pos):
        print(f"\t(= (at_person p{n}) {i})")
        print(f"\t(outside p{n})")

print("))")

print(")")
