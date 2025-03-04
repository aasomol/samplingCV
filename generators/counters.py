
import ast
import sys

args = sys.argv

s = ast.literal_eval(args[1])

cont = args[-1]

print("(define (problem counters)")

print("(:domain counters)")

print("(:objects ")

for i in range(len(s)):
    print(f"\tcounter{i} - counter")

print(")")

print("(:init")

print(f"\t(= (max_int) {2*len(s)})")

for n,i in enumerate(s):
    print(f"\t(= (value counter{n}) {i})")

print(f"\t(= (lower_bound) 0)")
print(f"\t(= (upper_bound) {2*len(s)})")
print(f"\t(= (delta) 0)")

if cont == 'C':
    print(f"\t(= (precision) 1)")

print(")")

print("(:goal (and")

for i in range(len(s)-1):
    print(f"\t(<= (+ (value counter{i}) 1) (value counter{i+1}))")

print("))")

print(")")
