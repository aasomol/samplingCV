
import ast
import sys

args = sys.argv

if len(args) != 11:
    print("Wrong usage")
    exit(-1)

locations,currencies,items,at = int(args[1]), int(args[2]), int(args[3]), int(args[4])
can_withdraw = ast.literal_eval(args[5])
can_buy = ast.literal_eval(args[6])
currency_of = ast.literal_eval(args[7])
balance = ast.literal_eval(args[8])
currency_goal = ast.literal_eval(args[9])
prices = ast.literal_eval(args[10])


print("(define (problem cashpoint)")

print("(:domain cashpoint)")

print("(:objects ")

for i in range(locations):
    print(f"\tlocation{i} - location")
for i in range(currencies):
    print(f"\tcurrency{i} - currency")
for i in range(items):
    print(f"\titem{i} - item")

print(")")

print("(:init")

print("\t(available)")
print(f"\t(at location{at})")

for i in can_withdraw:
    print(f"\t(canwithdraw location{at})")

for n,i in enumerate(can_buy):
    print(f"\t(canbuy location{i} item{n})")

for n,i in enumerate(currency_of):
    print(f"\t(currencyOf item{n} currency{i})")

for i in range(currencies):
    print(f"\t(= (inpocket currency{i}) 0)")

for n,i in enumerate(currency_goal):
    print(f"\t(= (currency_goal currency{n}) {i})")

for n,i in enumerate(prices):
    print(f"\t(= (price item{n}) {i})")

for n,i in enumerate(balance):
    print(f"\t(= (balance currency{n}) {i})")

print(")")

print("(:goal (and")

for i in range(items):
    print(f"\t(bought item{i})")

for i in range(currencies):
    print(f"\t(have_enough currency{i})")
    
print("))")

print(")")
