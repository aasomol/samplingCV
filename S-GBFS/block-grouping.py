import gym
from gym import spaces
import numpy as np
import random 
import time

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]


class BlockGrouping(gym.Env):

    def __init__(self,init_state,colors):
        
        self.init_state = init_state

        self.low = 1
        self.high = 20

        self.colors = colors

        self.tot_grounded = 2*len(self.init_state)

        self.bounds = [[(0,19)] for i in range(self.tot_grounded)] 

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1)  # Sample value, first [0,1] and then we scale with bounds
        ))
        
        self.observation_space = spaces.Box(self.low,self.high,shape=[len(self.init_state)])

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

        # Rescaling values

        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input

        curr_obj = int(action_schema) // 4
                
        # Transition system
        
        if action_schema % 4 == 0:      # UP
            if objs[2*curr_obj + 1] + round(value_input) <= self.high:
                objs[2*curr_obj + 1] += round(value_input)
        elif action_schema % 4 == 1:    # DOWN
            if objs[2*curr_obj + 1] - round(value_input) >= self.low:
                objs[2*curr_obj + 1] -= round(value_input)
        elif action_schema % 4 == 2:    # LEFT
            if objs[2*curr_obj] - round(value_input) >= self.low:
                objs[2*curr_obj] -= round(value_input)
        elif action_schema % 4 == 3:    # RIGHT
            if objs[2*curr_obj] + round(value_input) <= self.high:
                objs[2*curr_obj] += round(value_input)

        # Goal

        done = True
        for i in range(len(self.colors)):
            for j in range(i+1, len(self.colors)):
                if self.colors[i] == self.colors[j]: 
                    if objs[2*i] != objs[2*j] or objs[2*i+1] != objs[2*j+1]:
                        done = False
                        break
                else:
                    if objs[2*i] == objs[2*j] and objs[2*i+1] == objs[2*j+1]:
                        done = False
                        break
            else:
                continue
            break
        
        if self.colors[0] == self.colors[-1]:
            if objs[0] != objs[-2] or objs[1] != objs[-1]:
                done = False
        else:
            if objs[0] == objs[-2] and objs[1] == objs[-1]:
                done = False


        self.state = objs

        return tuple(self.state), 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        self.observation_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        self.state = self.init_state
        return tuple(self.state)

    def show(self, action, obs):
        action_schema = action[0]
        value_input = action[1][0] 
        bounds = self.bounds[action_schema][0]
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input
        
        curr_obj = int(action_schema) // 4
        if action_schema % 4 == 0:      # UP
            return f'(move-up b{curr_obj} {round(value_input)})'
        elif action_schema % 4 == 1:    # DOWN
            return f'(move-down b{curr_obj} {round(value_input)})'
        elif action_schema % 4 == 2:    # LEFT
            return f'(move-left b{curr_obj} {round(value_input)})'
        elif action_schema % 4 == 3:    # RIGHT
            return f'(move-right b{curr_obj} {round(value_input)})'
        
    def is_applicable(self, action, state):
        action_schema = action[0]
        value_input = action[1][0]
        bounds = self.bounds[action_schema][0] 
        value_input = bounds[0] + (bounds[1] - bounds[0]) * value_input
        
        objs = list(self.state)
        curr_obj = int(action_schema) // 4
                
        
        if action_schema % 4 == 0:      # UP
            if objs[2*curr_obj + 1] + round(value_input) <= self.high:
                return True
        elif action_schema % 4 == 1:    # DOWN
            if objs[2*curr_obj + 1] - round(value_input) >= self.low:
                return True
        elif action_schema % 4 == 2:    # LEFT
            if objs[2*curr_obj] - round(value_input) >= self.low:
                return True
        elif action_schema % 4 == 3:    # RIGHT
            if objs[2*curr_obj] + round(value_input) <= self.high:
                return True
        return False
    

    def goal_counting(self,state):
        count = 0
        objs = list(state)
        for i in range(len(self.colors)):
            for j in range(i+1, len(self.colors)):
                if self.colors[i] == self.colors[j]:  
                    if objs[2*i] != objs[2*j]:
                        count += 1
                    if objs[2*i+1] != objs[2*j+1]:
                        count += 1
                else:
                    if objs[2*i] == objs[2*j]:
                        count += 1
                    if objs[2*i+1] == objs[2*j+1]:
                        count += 1
        if self.colors[0] == self.colors[-1]:
            if objs[0] != objs[-2]:
                count += 1
            if objs[1] != objs[-1]:
                count += 1
        else:
            if objs[0] == objs[-2]:
                count += 1
            if objs[1] == objs[-1]:
                count += 1
        return count


from queue import PriorityQueue
import time

max_its = 2_000_000

n = 55



seed = 5
alpha = 0.01


s = generate_random_integers(n*2,1,20,seed=seed)
colors = generate_random_integers(len(s)//2,0,3)

num_tries = 10

import subprocess, copy

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/blocksgrouping.py', str(s), str(colors)],capture_output=True, text=True)

with open(f'problems/block-grouping/p{n}.pddl','w') as f:
    print(r.stdout, file=f)



for i in range(num_tries):
    open_list = PriorityQueue()
    t = time.time()

    env = BlockGrouping(s,colors)
    env.seed(seed+i)
    obs = env.reset()

    h = env.goal_counting


    open_list.put((h(obs),obs))
    done = False
    father = {obs: '-'}
    plan = {obs: '-'}
    num_visited = {obs: 1}
    from collections import defaultdict
    applied = defaultdict(list)


    its = 0

    while not open_list.empty() and not done:
        its += 1
        retrieve = open_list.get()
        obs = retrieve[1]
        # Generate a new applicable successor
        env.state = copy.deepcopy(obs)

        is_applicable = False
        while not is_applicable:
            a = env.action_space.sample()
            is_applicable = env.is_applicable(a,copy.deepcopy(obs))
            # Check action already applied
            if is_applicable and obs in applied.keys() and env.get_rounded_action(a) in applied[obs]:
                is_applicable = False
        
        applied[obs].append(env.get_rounded_action(a))

        new_obs, _, done, _ = env.step(a)

        if new_obs not in father.keys() or not father[new_obs]:
            father[new_obs] = obs
            plan[new_obs] = env.show(a,obs)

        if obs in num_visited.keys():
            num_visited[obs] += 1
        else:
            num_visited[obs] = 1

        open_list.put((h(new_obs),new_obs))
        open_list.put((h(obs)+num_visited[obs]**alpha,obs))             

    if its <= max_its:
        with open(f'plans/S-GBFS/block-grouping/plan{n}_{i}.pddl','w') as file:
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

