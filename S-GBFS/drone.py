import gym
from gym import spaces
import numpy as np
import random 
import time

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]


class Drone(gym.Env):

    def __init__(self,bounds, locations, battery_level_full):
        
        self.position = [0,0,0]
        self.battery_level_full = battery_level_full
        self.battery_level = battery_level_full

        self.low_x, self.low_y, self.low_z , self.high_x, self.high_y, self.high_z = bounds

        self.num_locations = len(locations)
        
        self.locs = locations
        self.visited = [0 for _ in range(self.num_locations)]

        self.tot_grounded = 6 + self.num_locations + 1

        self.bounds = [[(1,self.high_x-self.low_x),(1,self.high_y-self.low_y),(1,self.high_z-self.low_z)] for _ in range(self.tot_grounded)] 

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1, shape=[3])  # Sample value. Then scale
        ))
        

        
    def step(self, action):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0,0,0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n]
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)
            
        deltax, deltay, deltaz = deltas

        self.position = list(self.position)
        self.visited = list(self.visited)

        # Transition system

        if action_schema == 0: # INCREASE_X
            if self.battery_level >= deltax and self.position[0] <= self.high_x - deltax:
                self.position[0] += deltax
                self.battery_level -= deltax
        elif action_schema == 1: # DECREASE_X
            if self.battery_level >= deltax and self.position[0] >= self.low_x + deltax:
                self.position[0] -= deltax
                self.battery_level -= deltax
        elif action_schema == 2: # INCREASE_Y
            if self.battery_level >= deltay and self.position[1] <= self.high_y - deltay:
                self.position[1] += deltay
                self.battery_level -= deltay
        elif action_schema == 3: # DECREASE_Y
            if self.battery_level >= deltay and self.position[1] >= self.low_y + deltay:
                self.position[1] -= deltay
                self.battery_level -= deltay
        elif action_schema == 4: # INCREASE_Z
            if self.battery_level >= deltaz and self.position[2] <= self.high_z - deltaz:
                self.position[2] += deltaz
                self.battery_level -= deltaz
        elif action_schema == 5: # DECREASE_YZ
            if self.battery_level >= deltaz and self.position[2] >= self.low_z + deltaz:
                self.position[2] -= deltaz
                self.battery_level -= deltaz
        elif action_schema == self.tot_grounded - 1: # RECHARGE
            if list(self.position) == [0,0,0]:
                self.battery_level = self.battery_level_full
        else: # VISIT LOCATION
            if self.battery_level >= 1:
                location = action_schema - 6
                if list(self.position) == list(self.locs[location]):
                    self.visited[location] = 1
                    self.battery_level -= 1

        # GOAL

        done = all(self.visited) and list(self.position) == [0,0,0]
    
        return (tuple(self.visited),tuple(self.position),self.battery_level), 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        self.visited = [0 for _ in range(self.num_locations)]
        self.position = [0,0,0]
        self.battery_level = self.battery_level_full
        return (tuple(self.visited),tuple(self.position),self.battery_level)        

    def show(self, action):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0,0,0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n]
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)
            
        deltax, deltay, deltaz = deltas

        if action_schema == 0: # INCREASE_X
            return f'(increase_x {deltax})'
        elif action_schema == 1: # DECREASE_X
            return f'(decrease_x {deltax})'
        elif action_schema == 2: # INCREASE_Y
            return f'(increase_y {deltay})'
        elif action_schema == 3: # DECREASE_Y
            return f'(decrease_y {deltay})'
        elif action_schema == 4: # INCREASE_Z
            return f'(increase_z {deltaz})'
        elif action_schema == 5: # DECREASE_YZ
            return f'(decrease_z {deltaz})'
        elif action_schema == self.tot_grounded - 1: # RECHARGE
            return(f'(recharge)')
        else: # VISIT LOCATION
            location = action_schema - 6
            return f'(visit loc{location})'

        
    def is_applicable(self, action, state):
        _,position,battery_level = state

        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0,0,0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)

        
        deltax, deltay, deltaz = deltas

        # ACCIONES

        if action_schema == 0: # INCREASE_X
            if battery_level >= deltax and position[0] <= self.high_x - deltax:
                return True
        elif action_schema == 1: # DECREASE_X
            if battery_level >= deltax and position[0] >= self.low_x + deltax:
                return True
        elif action_schema == 2: # INCREASE_Y
            if battery_level >= deltay and position[1] <= self.high_y - deltay:
                return True
        elif action_schema == 3: # DECREASE_Y
            if battery_level >= deltay and position[1] >= self.low_y + deltay:
                return True
        elif action_schema == 4: # INCREASE_Z
            if battery_level >= deltaz and position[2] <= self.high_z - deltaz:
                return True
        elif action_schema == 5: # DECREASE_YZ
            if battery_level >= deltaz and position[2] >= self.low_z + deltaz:
                return True
        elif action_schema == self.tot_grounded - 1: # RECHARGE
            if list(position) == [0,0,0]:
                return True
        else: # VISIT LOCATION
            if battery_level >= 1:
                location = action_schema - 6
                if list(position) == list(self.locs[location]):
                    return True

    def sample_action(self):

        env.visited, env.position, env.battery_level

        choices = [0,1,2,3,4,5]

        if list(env.position) == [0,0,0]:
            choices.append(self.tot_grounded-1)
        
        if env.position in self.locs:
            choices.append(self.locs.index(tuple(env.position))+6)

        return random.choice(choices), [random.random() for _ in range(3)]


    def goal_counting(self,state):
        visited,position,_ = state
        goals = len(visited)-sum(visited)
        if goals == 0:
            if list(position) == [0,0,0]:
                goals += 1
        return goals

    def get_rounded_action(self,action):
        action_schema = action[0]
        value_inputs = action[1]
        
        deltas = [0,0,0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)

        
        deltax, deltay, deltaz = deltas

        # ACCIONES

        if action_schema == 0: # INCREASE_X
            return action_schema,deltax 
        elif action_schema == 1: # DECREASE_X
            return action_schema,deltax 
        elif action_schema == 2: # INCREASE_Y
            return action_schema,deltay 
        elif action_schema == 3: # DECREASE_Y
            return action_schema,deltay 
        elif action_schema == 4: # INCREASE_Z
            return action_schema,deltaz 
        elif action_schema == 5: # DECREASE_Z
            return action_schema,deltaz 
        elif action_schema == self.tot_grounded - 1: # RECHARGE
            return action_schema
        else: # VISIT LOCATION
            return action_schema 


# PROBLEM
max_its = 2_000_000
bounds = [0,0,0,6,6,6]
num_locations = 200
stop = False

random.seed(1)
locs = set()
while len(locs) < num_locations:
    x = random.randint(bounds[0],bounds[3])
    y = random.randint(bounds[1],bounds[4])
    z = random.randint(bounds[2],bounds[5])
    locs.add((x,y,z))
locs = list(locs)

battery_level_full = 47

import subprocess

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/drone.py', str(bounds), str(locs),str(battery_level_full)],capture_output=True, text=True)

with open(f'problems/drone/p{bounds[3]}-{bounds[4]}-{bounds[5]}-{len(locs)}.pddl','w') as f:
    print(r.stdout, file=f)


# ALGORITHM
for i in range(10):
    t = time.time()

    from queue import PriorityQueue

    seed = 5
    alpha = 2


    open_list = PriorityQueue()

    env = Drone(bounds,locs,battery_level_full)
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

        env.visited, env.position, env.battery_level = list(obs)

        # Generate a new applicable successor
        is_applicable = False
        dead_end = 0
        while not is_applicable and dead_end < 100: # To count for dead ends 
            a = env.sample_action()
            is_applicable = env.is_applicable(a,obs)
            dead_end += 1
            if is_applicable and obs in applied.keys() and env.get_rounded_action(a) in applied[obs]:
                is_applicable = False
        
        applied[obs].append(env.get_rounded_action(a))

        if dead_end < 100:

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
        with open(f'plans/S-GBFS/drone/plan{bounds[3]}-{bounds[4]}-{bounds[5]}-{len(locs)}_{i}.pddl','w') as file:
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