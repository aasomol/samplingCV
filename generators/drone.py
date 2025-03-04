
import ast
import sys

args = sys.argv

bounds = ast.literal_eval(args[1])
locs = ast.literal_eval(args[2])
battery_level_full = int(args[3])
cont = args[-1]

print("(define (problem disc_drone)")

print("(:domain disc_drone)")

print("(:objects ")

for i in range(len(locs)):
    print(f"\tloc{i} - location")

print(")")

print("(:init")

print(f"\t(= (x) 0)")
print(f"\t(= (y) 0)")
print(f"\t(= (z) 0)")

print(f"\t(= (min_x) {bounds[0]})")
print(f"\t(= (min_y) {bounds[1]})")
print(f"\t(= (min_z) {bounds[2]})")

print(f"\t(= (max_x) {bounds[3]})")
print(f"\t(= (max_y) {bounds[4]})")
print(f"\t(= (max_z) {bounds[5]})")

for n,i in enumerate(locs):
    print(f"\t(= (xl loc{n}) {i[0]})")
    print(f"\t(= (yl loc{n}) {i[1]})")
    print(f"\t(= (zl loc{n}) {i[2]})")

print(f"\t(= (battery-level) {battery_level_full})")
print(f"\t(= (battery-level-full) {battery_level_full})")

print(f"\t(= (low_deltax) {bounds[0]+1})")
print(f"\t(= (low_deltay) {bounds[1]+1})")
print(f"\t(= (low_deltaz) {bounds[2]+1})")

print(f"\t(= (deltax) {bounds[0]+1})")
print(f"\t(= (deltay) {bounds[1]+1})")
print(f"\t(= (deltaz) {bounds[2]+1})")


print(f"\t(= (up_deltax) {bounds[3]-bounds[0]})")
print(f"\t(= (up_deltay) {bounds[4]-bounds[1]})")
print(f"\t(= (up_deltaz) {bounds[5]-bounds[2]})")

if cont == 'C':
    print(f"\t(= (precision) 1)")


print(")")

print("(:goal (and")

for n,_ in enumerate(locs):
    print(f"\t(visited loc{n})")

if cont == 'C':
    print(f"\t(<= (x) 0.2)")
    print(f"\t(<= (y) 0.2)")
    print(f"\t(<= (z) 0.2)")
else:
    print(f"\t(= (x) 0)")
    print(f"\t(= (y) 0)")
    print(f"\t(= (z) 0)")


print("))")

print(")")
