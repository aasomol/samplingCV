import gym
from gym import spaces
import numpy as np
import random 
import time
import math

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]


class Counters(gym.Env):

    def __init__(self,init_state):
        
        self.init_state = init_state

        self.tot_grounded = 2*len(self.init_state)

        self.bounds = [[(0,2*len(self.init_state))] for i in range(self.tot_grounded)] 
        

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1)  # Sample value. Scale after with bounds
        ))
        
        self.observation_space = spaces.Box(0,2*len(self.init_state),shape=[len(self.init_state)])

    def get_rounded_action(self,action):
        action_schema = action[0]
        value_input = action[1][0] 
        
        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        return (action_schema,round(value_input))

    def step(self, action):
        err_msg = "%r (%s) invalid" % (action, type(action))
        assert self.action_space.contains(action), err_msg

        objs = list(self.state)

        action_schema = action[0]
        value_input = action[1][0] 
        
        bounds = self.bounds[action_schema][0]
        
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        curr_obj = int(action_schema)

        # Transition system
                
        if action_schema < len(self.init_state):
            if objs[curr_obj] + round(value_input) <= 2*len(self.init_state):
                objs[curr_obj] += round(value_input)
        else:
            if objs[curr_obj - len(self.init_state)] - round(value_input) >= 0:
                objs[curr_obj - len(self.init_state)] -= round(value_input)

        # Goal
        reward = -1
        done = False

        left = objs[:-1]
        left += np.ones(len(left))
        right = objs[1:]

        done = np.all(np.less_equal(left,right))

        if done:
            reward = 0

        self.state = objs

        return tuple(self.state), reward, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        self.observation_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        self.state = self.init_state
        return tuple(self.state)

    def show(self, action):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input
        if action_schema < len(self.init_state):
            return f'(increase c{action_schema} {round(value_input)})'
        else:
            return f'(decrease c{action_schema-len(self.init_state)} {round(value_input)})'

    def is_applicable(self, action, state):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        if action_schema < len(self.init_state):
            return state[action_schema] + round(value_input) <= 2*len(self.init_state)
        else:
            return state[action_schema - len(self.init_state)] - round(value_input) >= 0

def goal_counting(estado):
    penalizacion = 0

    for i in range(len(estado) - 1):
        if estado[i] > estado[i+1]:
            penalizacion += 1
    return float(penalizacion)



from queue import PriorityQueue

max_its = 2_000_000
n = 38

goal_state = [n - n//2 + i for i in range(n)]

h = goal_counting
seed = 5
alpha = 0.01


s = generate_random_integers(n,0,n*2,seed=seed)

import subprocess

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/counters.py', str(s)],capture_output=True, text=True)

with open(f'problems/counters/p{n}.pddl','w') as f:
    print(r.stdout, file=f)


num_its = 10

for i in range(num_its):

    open_list = PriorityQueue()
    t = time.time()

    env = Counters(s)
    env.seed(seed+i)
    obs = env.reset()

    open_list.put((h(obs),obs))
    done = False
    father = {obs: '-'}
    plan = {obs: '-'}
    num_visited = {obs: 1}

    its = 0
    from collections import defaultdict
    applied = defaultdict(list)

    while not open_list.empty() and not done and its < max_its:
        its += 1
        retrieve = open_list.get()
        obs = retrieve[1]

        # Generate a new applicable successor
        env.state = obs

        is_applicable = False
        while not is_applicable:
            a = env.action_space.sample()
            is_applicable = env.is_applicable(a,obs)

            if is_applicable and obs in applied.keys() and env.get_rounded_action(a) in applied[obs]:
                is_applicable = False
        
        applied[obs].append(env.get_rounded_action(a))

        new_obs, _, done, _ = env.step(a)

        if new_obs not in father.keys() or not father[new_obs]:
            father[new_obs] = obs
            plan[new_obs] = env.show(a)

        if obs in num_visited.keys():
            num_visited[obs] += 1
        else:
            num_visited[obs] = 1

        open_list.put((h(new_obs),new_obs))
        open_list.put((h(obs)+num_visited[obs]**alpha,obs))

    if its <= max_its:
        with open(f'plans/S-GBFS/counters/plan{n}_{i}.pddl','w') as file:
            actions = 1        

            print(f'seed: {seed+i}', file=file)
            print(f'alpha: {alpha}', file=file)
            print('iterations:', its, file=file)
            
            p = [plan[tuple(new_obs)]]
            f = father[tuple(new_obs)]

            while father[f] != '-':
                p.append(plan[f])
                actions += 1
                f = father[f]
                
            print('time:',time.time()-t, file=file)
            print('actions:',actions, file=file)
            print('-------------',file=file)

            print('\n'.join(list(reversed(p))), file=file)
