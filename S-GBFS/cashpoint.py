import gym
from gym import spaces
import numpy as np
import random 
import time
import math
import copy

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]

def generate_random_diff_integers(n,lower_bound,upper_bound):
    return random.sample(range(lower_bound, upper_bound), n)


class Cashpoint(gym.Env):

    def __init__(self,
                 locations,currencies,items,
                 at,can_withdraw,can_buy,currency_of,balance,
                 currency_goal,price):
        
        self.locations = locations
        self.currencies = currencies
        self.items = items

        self.at = at
        self.can_withdraw = can_withdraw
        self.can_buy = can_buy
        self.currency_of = currency_of
        self.balance = balance

        self.in_pocket = [0 for _ in range(currencies)]
        self.currency_goal = currency_goal
        self.price = price

        self.bought = [0 for _ in range(items)]
        self.have_enough = [0 for _ in range(currencies)]


        self.tot_grounded = self.items + self.currencies + self.locations + self.currencies

        self.bounds = [[(20,500)] for i in range(self.tot_grounded)] 

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1)  # Sample value. Scale after
        ))
        

    def get_rounded_action(self,action):
        action_schema = action[0]
        value_input = action[1][0] 

        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        return (action_schema,value_input)

    def step(self, action, verbose=False):
        err_msg = "%r (%s) invalid" % (action, type(action))
        assert self.action_space.contains(action), err_msg

        action_schema = action[0]
        value_input = action[1][0] 

        bounds = self.bounds[action_schema][0] 

        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)

        # Transition system
                
        if action_schema < self.items:                      # BUY
            if self.at == self.can_buy[curr_obj] and self.in_pocket[self.currency_of[curr_obj]] >= self.price[curr_obj] and self.bought[curr_obj] == 0:
                self.in_pocket[self.currency_of[curr_obj]] -= self.price[curr_obj]
                self.bought[curr_obj] = 1
        elif action_schema < self.items + self.currencies:  # WITHDRAW
            curr_obj = action_schema - self.items
            if self.at in self.can_withdraw and self.balance[curr_obj] - value_input >= 0:
                self.in_pocket[curr_obj] += value_input
                self.balance[curr_obj] -= value_input
        elif action_schema < self.items + self.currencies + self.locations: # GOTO
            curr_obj = action_schema - self.items - self.currencies
            if self.at != curr_obj:
                self.at = curr_obj
        else:                                               # SAVE_FOR_LATER
            curr_obj = action_schema - self.items - self.currencies - self.locations
            if self.in_pocket[curr_obj] >= self.currency_goal[curr_obj] and self.have_enough[curr_obj] == 0:
                self.have_enough[curr_obj] = 1
                self.in_pocket[curr_obj] -= self.currency_goal[curr_obj]

        # Goal
        
        done = all(self.bought) and all(self.have_enough)


        return [self.at,self.in_pocket,self.bought,self.have_enough,self.balance], 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        return [self.at,self.in_pocket,self.bought,self.have_enough,self.balance]

    def show(self, action,state):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)
        at,in_pocket,bought,have_enough,balance = state

        if action_schema < self.items:                      # BUY
            if at == self.can_buy[curr_obj] and in_pocket[self.currency_of[curr_obj]] >= self.price[curr_obj] and bought[curr_obj] == 0:
                return f'(buy_with_cash item{curr_obj} location{at} currency{self.currency_of[curr_obj]})'
        elif action_schema < self.items + self.currencies:  # WITHDRAW
            curr_obj = action_schema - self.items
            if at in self.can_withdraw and balance[curr_obj] - value_input >= 0:
                return f'(withdraw location{at} currency{curr_obj} {value_input})'
        elif action_schema < self.items + self.currencies + self.locations: # GOTO
            curr_obj = action_schema - self.items - self.currencies
            if at != curr_obj:
                return f'(goto location{at} location{curr_obj})'
        else:                                               # SAVE_FOR_LATER
            curr_obj = action_schema - self.items - self.currencies - self.locations
            if in_pocket[curr_obj] >= self.currency_goal[curr_obj] and have_enough[curr_obj] == 0:
                return f'(save_for_later currency{curr_obj})'

    def is_applicable(self, action, state):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)


        at,in_pocket,bought,have_enough,balance = state

        if action_schema < self.items:                      # BUY
            if at == self.can_buy[curr_obj] and in_pocket[self.currency_of[curr_obj]] >= self.price[curr_obj] and bought[curr_obj] == 0:
                return True
        elif action_schema < self.items + self.currencies:  # WITHDRAW
            curr_obj = action_schema - self.items
            if at in self.can_withdraw and balance[curr_obj] - value_input >= 0:
                return True
        elif action_schema < self.items + self.currencies + self.locations: # GOTO
            curr_obj = action_schema - self.items - self.currencies
            if at != curr_obj:
                return True
        else:                                               # SAVE_FOR_LATER
            curr_obj = action_schema - self.items - self.currencies - self.locations
            if in_pocket[curr_obj] >= self.currency_goal[curr_obj] and have_enough[curr_obj] == 0:
                return True
        

    def heuristic(self,state):
        _,_,bought,have_enough,_ = state
        return self.items + self.currencies - (sum(bought) + sum(have_enough))
    

from queue import PriorityQueue

seed = 5
alpha = 0.01


locations = 250
currencies = 10
items = 250

at = random.randrange(locations)
can_withdraw = generate_random_diff_integers(locations//3,0,locations)
can_buy = random.choices([i for i in range(locations) if i not in can_withdraw],k=items)
currency_of = generate_random_integers(items,0,currencies-1)

prices = generate_random_integers(items,10,100)
currency_goal = generate_random_integers(currencies,10,100)
balance = [round(1.5*(sum([p for n,p in enumerate(prices) if currency_of[n] == i])+currency_goal[i])) for i in range(currencies)]


import subprocess

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/cashpoint.py', str(locations), str(currencies), str(items), str(at),
                str(can_withdraw), str(can_buy), str(currency_of), str(balance), str(currency_goal), str(prices)],capture_output=True, text=True)

with open(f'problems/cashpoint/p{locations}-{currencies}-{items}.pddl','w') as f:
    print(r.stdout, file=f)


num_tries = 10

for i in range(num_tries):

    t = time.time()
    open_list = PriorityQueue()

    env = Cashpoint(locations,currencies,items,at,can_withdraw,can_buy,currency_of,balance,currency_goal,prices)


    env.seed(seed+i)
    obs = env.reset()
    h = env.heuristic

    open_list.put((h(obs),obs))
    done = False
    father = {str(obs): '-'}
    plan = {str(obs): '-'}
    num_visited = {str(obs): 1}

    from collections import defaultdict
    applied = defaultdict(list)

    its = 0


    while not open_list.empty() and not done:
        its += 1
        retrieve = open_list.get()
        obs = retrieve[1]

        # Generate a new applicable successor
        [env.at,env.in_pocket,env.bought,env.have_enough,env.balance] = copy.deepcopy(obs)

        is_applicable = False
        while not is_applicable:
            a = env.action_space.sample()
            is_applicable = env.is_applicable(a,copy.deepcopy(obs))

            if is_applicable and str(obs) in applied.keys() and env.get_rounded_action(a) in applied[str(obs)]:
                is_applicable = False

        
        applied[str(obs)].append(env.get_rounded_action(a))

        new_obs, _, done, _ = env.step(a)

        if str(new_obs) not in father.keys() or not father[str(new_obs)]:
            father[str(new_obs)] = str(obs)
            plan[str(new_obs)] = env.show(a,obs)

        if str(obs) in num_visited.keys():
            num_visited[str(obs)] += 1
        else:
            num_visited[str(obs)] = 1

        open_list.put((h(new_obs),new_obs))
        open_list.put((h(obs)+num_visited[str(obs)]**alpha,obs))

    with open(f'plans/S-GBFS/cashpoint/plan{locations}-{currencies}-{items}_{i}.pddl','w') as file:
        actions = 1        

        print(f'seed: {seed+i}', file=file)
        print(f'alpha: {alpha}', file=file)
        print('iterations:', its, file=file)

        p = [plan[str(new_obs)]]
        f = father[str(new_obs)]

        while father[f] != '-':
            p.append(plan[f])
            actions += 1
            f = father[f]
            
        print('time:',time.time()-t, file=file)
        print('actions:',actions, file=file)
        print('-------------',file=file)

        print('\n'.join(list(reversed(p))), file=file)
