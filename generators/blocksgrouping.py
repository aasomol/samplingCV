
import ast
import sys

args = sys.argv


s = ast.literal_eval(args[1])
colors = ast.literal_eval(args[2])
cont = args[-1]

print("(define (problem block-grouping)")

print("(:domain block-grouping)")

print("(:objects ")

for i in range(len(s) // 2):
    print(f"\tb{i} - block")

print(")")

print("(:init")

for n,i in enumerate(s):
    if n%2 == 0:
        print(f"\t(= (x b{n//2}) {i})")
    else:
        print(f"\t(= (y b{n//2}) {i})")

print(f"\t(= (max_x) 20)")
print(f"\t(= (min_x) 0)")
print(f"\t(= (max_y) 20)")
print(f"\t(= (min_y) 0)")

print(f"\t(= (lower_bound) 0)")
print(f"\t(= (upper_bound) 19)")
print(f"\t(= (delta) 0)")
if cont == 'C':
    print(f"\t(= (precision) 1)")

print(")")

print("(:goal (and")

if cont != 'C':

    for i in range(len(colors)):
        for j in range(i+1, len(colors)):
            if colors[i] == colors[j]:
                print(f"\t(= (x b{i}) (x b{j}))")
                print(f"\t(= (y b{i}) (y b{j}))")
            else:
                print(f"\t(or (not (= (x b{i}) (x b{j}))) (not (= (y b{i}) (y b{j}))))")

else:
    for i in range(len(colors)):
        for j in range(i+1, len(colors)):
            if colors[i] == colors[j]:
                print(f"\t(<= (- (x b{i}) (x b{j})) 0.2)")
                print(f"\t(>= (- (x b{j}) (x b{i})) 0.2)")
                print(f"\t(<= (- (y b{i}) (y b{j})) 0.2)")
                print(f"\t(>= (- (y b{j}) (y b{i})) 0.2)")
            else:
                print(f"\t(or (not (<= (- (x b{i}) (x b{j})) 0.2)) (not (<= (- (y b{i}) (y b{j})) 0.2)))")
                print(f"\t(or (not (<= (- (x b{i}) (x b{j})) 0.2)) (not (>= (- (y b{j}) (y b{i})) 0.2)))")
                print(f"\t(or (not (>= (- (x b{j}) (x b{i})) 0.2)) (not (<= (- (y b{i}) (y b{j})) 0.2)))")
                print(f"\t(or (not (>= (- (x b{j}) (x b{i})) 0.2)) (not (>= (- (y b{j}) (y b{i})) 0.2)))")

print("))")

print(")")
