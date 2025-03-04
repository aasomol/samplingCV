import gym
from gym import spaces
import numpy as np
import random 
import time
import math
import copy
from collections import defaultdict

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]

def generate_random_diff_integers(n,lower_bound,upper_bound):
    return random.sample(range(lower_bound, upper_bound), n)


class Procurement(gym.Env):

    def __init__(self,
                 suppliers, customers, workshops,
                 can_produce,can_supply,
                 at,
                 item_goal,
                 to_deliver
                 ):
        
        self.suppliers = suppliers
        self.customers = customers
        self.workshops = workshops

        self.can_supply = can_supply
        self.can_produce = can_produce

        self.stock = [0 for _ in range(19)]
        self.item_goal = item_goal

        self.to_deliver = to_deliver
        self.delivered = defaultdict(list)
        self.at = at

        self.tot_grounded = 19 + (self.workshops + self.suppliers + self.customers) + 19

        self.bounds = [[(1,100)] for i in range(self.tot_grounded)] 
        

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1)  # Sample value. Then scale
        ))
        

    def get_rounded_action(self,action):
        action_schema = action[0]
        value_input = action[1][0] 
        
        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        return (action_schema,(value_input))

    def step(self, action, verbose=False):
        err_msg = "%r (%s) invalid" % (action, type(action))
        assert self.action_space.contains(action), err_msg

        action_schema = action[0]
        value_input = action[1][0] 
        
        bounds = self.bounds[action_schema][0]
        
        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)

        # Transition system
                
        if action_schema == 0: # PRODUCE A
            if self.at == self.can_produce[0] and self.stock[0] >= 0 and self.stock[1] >= 2*value_input and self.stock[2] >= value_input and self.stock[3] >= 2*value_input:
                self.stock[0] += value_input
                self.stock[1] -= value_input * 2
                self.stock[2] -= value_input
                self.stock[3] -= value_input * 2
        elif action_schema == 1: # PRODUCE B
            if self.at == self.can_produce[1] and self.stock[1] >= 0 and self.stock[4] >= 2*value_input and self.stock[5] >= value_input and self.stock[6] >= 2*value_input:
                self.stock[1] += value_input
                self.stock[4] -= value_input * 2
                self.stock[5] -= value_input
                self.stock[6] -= value_input * 2
        elif action_schema == 2: # PRODUCE C
            if self.at == self.can_produce[2] and self.stock[2] >= 0 and self.stock[7] >= value_input and self.stock[8] >= 2*value_input:
                self.stock[2] += value_input
                self.stock[7] -= value_input 
                self.stock[8] -= value_input * 2
        elif action_schema == 3: # PRODUCE F
            if self.at == self.can_produce[5] and self.stock[5] >= 0 and self.stock[9] >= 4*value_input and self.stock[10] >= value_input:
                self.stock[5] += value_input
                self.stock[9] -= 4*value_input 
                self.stock[10] -= value_input
        elif action_schema == 4: # PRODUCE H
            if self.at == self.can_produce[7] and self.stock[7] >= 0 and self.stock[11] >= 5*value_input and self.stock[12] >= 2*value_input:
                self.stock[7] += value_input
                self.stock[11] -= 5*value_input 
                self.stock[12] -= 2*value_input
        elif action_schema == 5: # PRODUCE K
            if self.at == self.can_produce[10] and self.stock[10] >= 0 and self.stock[13] >= 6*value_input and self.stock[14] >= 2*value_input and self.stock[15] >= value_input:
                self.stock[10] += value_input
                self.stock[13] -= 6*value_input 
                self.stock[14] -= 2*value_input
                self.stock[15] -= value_input
        elif action_schema == 6: # PRODUCE L
            if self.at == self.can_produce[11] and self.stock[11] >= 0 and self.stock[15] >= 2*value_input:
                self.stock[11] += value_input
                self.stock[15] -= 2*value_input
        elif action_schema == 7: # PRODUCE M
            if self.at == self.can_produce[12] and self.stock[12] >= 0 and self.stock[16] >= 3*value_input and self.stock[17] >= 2*value_input:
                self.stock[12] += value_input
                self.stock[16] -= 3*value_input 
                self.stock[17] -= 2*value_input
        elif action_schema == 8: # SUPPLY D
            if self.at == self.can_supply[3] and self.stock[3] >= 0:
                self.stock[3] += value_input
        elif action_schema == 9: # SUPPLY E
            if self.at == self.can_supply[4] and self.stock[4] >= 0:
                self.stock[4] += value_input
        elif action_schema == 10: # SUPPLY G
            if self.at == self.can_supply[6] and self.stock[6] >= 0:
                self.stock[6] += value_input
        elif action_schema == 11: # SUPPLY I
            if self.at == self.can_supply[8] and self.stock[8] >= 0:
                self.stock[8] += value_input
        elif action_schema == 12: # SUPPLY J
            if self.at == self.can_supply[9] and self.stock[9] >= 0:
                self.stock[9] += value_input
        elif action_schema == 13: # SUPPLY N
            if self.at == self.can_supply[13] and self.stock[13] >= 0:
                self.stock[13] += value_input
        elif action_schema == 14: # SUPPLY O
            if self.at == self.can_supply[14] and self.stock[14] >= 0:
                self.stock[14] += value_input
        elif action_schema == 15: # SUPPLY P
            if self.at == self.can_supply[15] and self.stock[15] >= 0:
                self.stock[15] += value_input
        elif action_schema == 16: # SUPPLY Q
            if self.at == self.can_supply[16] and self.stock[16] >= 0:
                self.stock[16] += value_input
        elif action_schema == 17: # SUPPLY R
            if self.at == self.can_supply[17] and self.stock[17] >= 0:
                self.stock[17] += value_input
        elif action_schema == 18: # SUPPLY S
            if self.at == self.can_supply[18] and self.stock[18] >= 0:
                self.stock[18] += value_input
        elif action_schema < 19 + (self.workshops + self.suppliers + self.customers): # GOTO
            curr_obj = action_schema - 19
            if self.at != curr_obj:
                self.at = curr_obj
        else: # DELIVER TO CUSTOMER
            curr_obj = action_schema - 19 - (self.workshops + self.suppliers + self.customers)
            if self.stock[curr_obj] >= self.item_goal[curr_obj] and self.at >= self.workshops + self.suppliers and self.at not in self.delivered[curr_obj]:
                self.delivered[curr_obj].append(self.at) 
                self.stock[curr_obj] -= self.item_goal[curr_obj] 

        # Goal
        
        done = all([customer+self.workshops+self.suppliers in self.delivered[obj] for customer,obj in enumerate(self.to_deliver)])


        return [self.at,self.stock,self.delivered], 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        return [self.at,self.stock,self.delivered]

    def show(self, action,state):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)
        at,stock,delivered = state

        if action_schema == 0: # PRODUCE A
            if at == self.can_produce[0] and stock[0] >= 0 and stock[1] >= 2*value_input and stock[2] >= value_input and stock[3] >= 2*value_input:
                return f'(produce_A workshop{at} {value_input})'
        elif action_schema == 1: # PRODUCE B
            if at == self.can_produce[1] and stock[1] >= 0 and stock[4] >= 2*value_input and stock[5] >= value_input and stock[6] >= 2*value_input:
                return f'(produce_B workshop{at} {value_input})'
        elif action_schema == 2: # PRODUCE C
            if at == self.can_produce[2] and stock[2] >= 0 and stock[7] >= value_input and stock[8] >= 2*value_input:
                return f'(produce_C workshop{at} {value_input})'
        elif action_schema == 3: # PRODUCE F
            if at == self.can_produce[5] and stock[5] >= 0 and stock[9] >= 4*value_input and stock[10] >= value_input:
                return f'(produce_F workshop{at} {value_input})'
        elif action_schema == 4: # PRODUCE H
            if at == self.can_produce[7] and stock[7] >= 0 and stock[11] >= 5*value_input and stock[12] >= 2*value_input:
                return f'(produce_H workshop{at} {value_input})'
        elif action_schema == 5: # PRODUCE K
            if at == self.can_produce[10] and stock[10] >= 0 and stock[13] >= 6*value_input and stock[14] >= 2*value_input and stock[15] >= value_input:
                return f'(produce_K workshop{at} {value_input})'
        elif action_schema == 6: # PRODUCE L
            if at == self.can_produce[11] and stock[11] >= 0 and stock[15] >= 2*value_input:
                return f'(produce_L workshop{at} {value_input})'
        elif action_schema == 7: # PRODUCE M
            if at == self.can_produce[12] and stock[12] >= 0 and stock[16] >= 3*value_input and stock[17] >= 2*value_input:
                return f'(produce_M workshop{at} {value_input})'
        elif action_schema == 8: # SUPPLY D
            if at == self.can_supply[3] and stock[3] >= 0:
                return f'(supply_D supplier{at-self.workshops} {value_input})'
        elif action_schema == 9: # SUPPLY E
            if at == self.can_supply[4] and stock[4] >= 0:
                return f'(supply_E supplier{at-self.workshops} {value_input})'
        elif action_schema == 10: # SUPPLY G
            if at == self.can_supply[6] and stock[6] >= 0:
                return f'(supply_G supplier{at-self.workshops} {value_input})'
        elif action_schema == 11: # SUPPLY I
            if at == self.can_supply[8] and stock[8] >= 0:
                return f'(supply_I supplier{at-self.workshops} {value_input})'
        elif action_schema == 12: # SUPPLY J
            if at == self.can_supply[9] and stock[9] >= 0:
                return f'(supply_J supplier{at-self.workshops} {value_input})'
        elif action_schema == 13: # SUPPLY N
            if at == self.can_supply[13] and stock[13] >= 0:
                return f'(supply_N supplier{at-self.workshops} {value_input})'
        elif action_schema == 14: # SUPPLY O
            if at == self.can_supply[14] and stock[14] >= 0:
                return f'(supply_O supplier{at-self.workshops} {value_input})'
        elif action_schema == 15: # SUPPLY P
            if at == self.can_supply[15] and stock[15] >= 0:
                return f'(supply_P supplier{at-self.workshops} {value_input})'
        elif action_schema == 16: # SUPPLY Q
            if at == self.can_supply[16] and stock[16] >= 0:
                return f'(supply_Q supplier{at-self.workshops} {value_input})'
        elif action_schema == 17: # SUPPLY R
            if at == self.can_supply[17] and stock[17] >= 0:
                return f'(supply_R supplier{at-self.workshops} {value_input})'
        elif action_schema == 18: # SUPPLY S
            if at == self.can_supply[18] and stock[18] >= 0:
                return f'(supply_S supplier{at-self.workshops} {value_input})'
        elif action_schema < 19 + (self.workshops + self.suppliers + self.customers): # GOTO
            curr_obj = action_schema - 19
            if at != curr_obj:
                if at < self.workshops:
                    if curr_obj < self.workshops:
                        return f'(go_to workshop{at} workshop{curr_obj})'
                    elif curr_obj < self.workshops + self.suppliers:
                        return f'(go_to workshop{at} supplier{curr_obj-self.workshops})'
                    else:
                        return f'(go_to workshop{at} customer{curr_obj-self.workshops-self.suppliers})'
                elif at < self.workshops + self.suppliers:
                    if curr_obj < self.workshops:
                        return f'(go_to supplier{at-self.workshops} workshop{curr_obj})'
                    elif curr_obj < self.workshops + self.suppliers:
                        return f'(go_to supplier{at-self.workshops} supplier{curr_obj-self.workshops})'
                    else:
                        return f'(go_to supplier{at-self.workshops} customer{curr_obj-self.workshops-self.suppliers})'
                else:
                    if curr_obj < self.workshops:
                        return f'(go_to customer{at-self.workshops-self.suppliers} workshop{curr_obj})'
                    elif curr_obj < self.workshops + self.suppliers:
                        return f'(go_to customer{at-self.workshops-self.suppliers} supplier{curr_obj-self.workshops})'
                    else:
                        return f'(go_to customer{at-self.workshops-self.suppliers} customer{curr_obj-self.workshops-self.suppliers})'
        else: # DELIVER TO CUSTOMER
            curr_obj = action_schema - 19 - (self.workshops + self.suppliers + self.customers)
            if stock[curr_obj] >= self.item_goal[curr_obj] and at >= self.workshops + self.suppliers and at not in delivered[curr_obj]:
                return f'(deliver_to_customer customer{at-self.workshops-self.suppliers} item{chr(ord("A")+curr_obj)})'

    def is_applicable(self, action, state):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = (bounds[0] + (bounds[1] - bounds[0]) * value_input)

        curr_obj = int(action_schema)


        at,stock,delivered = state

        if action_schema == 0: # PRODUCE A
            if at == self.can_produce[0] and stock[0] >= 0 and stock[1] >= 2*value_input and stock[2] >= value_input and stock[3] >= 2*value_input:
                return True
        elif action_schema == 1: # PRODUCE B
            if at == self.can_produce[1] and stock[1] >= 0 and stock[4] >= 2*value_input and stock[5] >= value_input and stock[6] >= 2*value_input:
                return True
        elif action_schema == 2: # PRODUCE C
            if at == self.can_produce[2] and stock[2] >= 0 and stock[7] >= value_input and stock[8] >= 2*value_input:
                return True
        elif action_schema == 3: # PRODUCE F
            if at == self.can_produce[5] and stock[5] >= 0 and stock[9] >= 4*value_input and stock[10] >= value_input:
                return True
        elif action_schema == 4: # PRODUCE H
            if at == self.can_produce[7] and stock[7] >= 0 and stock[11] >= 5*value_input and stock[12] >= 2*value_input:
                return True
        elif action_schema == 5: # PRODUCE K
            if at == self.can_produce[10] and stock[10] >= 0 and stock[13] >= 6*value_input and stock[14] >= 2*value_input and stock[15] >= value_input:
                return True
        elif action_schema == 6: # PRODUCE L
            if at == self.can_produce[11] and stock[11] >= 0 and stock[15] >= 2*value_input:
                return True
        elif action_schema == 7: # PRODUCE M
            if at == self.can_produce[12] and stock[12] >= 0 and stock[16] >= 3*value_input and stock[17] >= 2*value_input:
                return True
        elif action_schema == 8: # SUPPLY D
            if at == self.can_supply[3] and stock[3] >= 0:
                return True
        elif action_schema == 9: # SUPPLY E
            if at == self.can_supply[4] and stock[4] >= 0:
                return True
        elif action_schema == 10: # SUPPLY G
            if at == self.can_supply[6] and stock[6] >= 0:
                return True
        elif action_schema == 11: # SUPPLY I
            if at == self.can_supply[8] and stock[8] >= 0:
                return True
        elif action_schema == 12: # SUPPLY J
            if at == self.can_supply[9] and stock[9] >= 0:
                return True
        elif action_schema == 13: # SUPPLY N
            if at == self.can_supply[13] and stock[13] >= 0:
                return True
        elif action_schema == 14: # SUPPLY O
            if at == self.can_supply[14] and stock[14] >= 0:
                return True
        elif action_schema == 15: # SUPPLY P
            if at == self.can_supply[15] and stock[15] >= 0:
                return True
        elif action_schema == 16: # SUPPLY Q
            if at == self.can_supply[16] and stock[16] >= 0:
                return True
        elif action_schema == 17: # SUPPLY R
            if at == self.can_supply[17] and stock[17] >= 0:
                return True
        elif action_schema == 18: # SUPPLY S
            if at == self.can_supply[18] and stock[18] >= 0:
                return True
        elif action_schema < 19 + (self.workshops + self.suppliers + self.customers): # GOTO
            curr_obj = action_schema - 19
            if at != curr_obj:
                return True
        else: # DELIVER TO CUSTOMER
            curr_obj = action_schema - 19 - (self.workshops + self.suppliers + self.customers)
            if stock[curr_obj] >= self.item_goal[curr_obj] and at >= self.workshops + self.suppliers and at not in delivered[curr_obj]:
                return True
        

    def heuristic(self,state):
        _,_,delivered = state
        return len(self.to_deliver) - sum([customer+self.workshops+self.suppliers in delivered[obj] for customer,obj in enumerate(self.to_deliver)])
    

from queue import PriorityQueue

seed = 5
alpha = 0.01



suppliers = 10
customers = 10
workshops = 10

can_produce = [random.randrange(0,workshops) if i in [0,1,2,5,7,10,11,12] else -1 for i in range(19)] 
can_supply = [random.randrange(workshops,workshops+suppliers) if i in [3,4,6,8,9,13,14,15,16,17,18] else -1 for i in range(19)] 

at = random.randrange(workshops+suppliers+customers) 

item_goal = [random.randrange(1,15) for _ in range(19)] 
to_deliver = generate_random_diff_integers(customers,0,19) 

import subprocess

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/procurement.py', str(suppliers), str(customers), str(workshops), str(can_produce),
                str(can_supply), str(at), str(item_goal), str(to_deliver)],capture_output=True, text=True)

with open(f'problems/procurement/p{suppliers}-{customers}-{workshops}.pddl','w') as f:
    print(r.stdout, file=f)

for i in range(10):

    t = time.time()
    open_list = PriorityQueue()

    env = Procurement(suppliers,customers,workshops,can_produce,can_supply,at,item_goal,to_deliver)

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
        [env.at,env.stock,env.delivered] = copy.deepcopy(obs)

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

        open_list.put(((h(new_obs),its),new_obs))
        open_list.put(((h(obs)+num_visited[str(obs)]**alpha,its),obs))

    with open(f'plans/S-GBFS/procurement/plan{suppliers}-{customers}-{workshops}_{i}.pddl','w') as file:
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
