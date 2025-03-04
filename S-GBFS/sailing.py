import gym
from gym import spaces
import numpy as np
import random 
import time
import copy


class Sailing(gym.Env):

    def __init__(self,boats, distances ,max_loc):
        self.boats = boats
        self.distances = distances

        self.saved = [0 for _ in range(len(self.distances))]

        self.max_loc = max_loc

        self.tot_grounded = 7*len(self.boats)//2 + len(self.saved)*len(self.boats)//2

        self.bounds = [[(1,10)] for _ in range(self.tot_grounded)] 

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1, shape=[1])  # Sample value. Then scale
        ))


        
    def step(self, action, verbose=False):

        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)
            
        delta = deltas[0]

        # Transition system

        if action_schema < 7*len(self.boats)//2:    #MOVE
            a = action_schema
            num_boat = a // 7
            num_move = a % 7
            if num_move == 0:   #NE
                if self.boats[num_boat*2] + delta * 1.5 <= self.max_loc and self.boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    self.boats[num_boat*2] += delta * 1.5
                    self.boats[num_boat*2+1] += delta * 1.5
            if num_move == 1:   #NW
                if self.boats[num_boat*2] - delta * 1.5 >= -self.max_loc and self.boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    self.boats[num_boat*2] -= delta * 1.5
                    self.boats[num_boat*2+1] += delta * 1.5
            if num_move == 2:   #E
                if self.boats[num_boat*2] + delta * 3 <= self.max_loc:
                    self.boats[num_boat*2] += delta * 3
            if num_move == 3:   #W
                if self.boats[num_boat*2] - delta * 3 >= -self.max_loc:
                    self.boats[num_boat*2] -= delta * 3
            if num_move == 4:   #SW
                if self.boats[num_boat*2] + delta * 2 <= self.max_loc and self.boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    self.boats[num_boat*2] += delta * 2
                    self.boats[num_boat*2+1] -= delta * 2
            if num_move == 5:   #SE
                if self.boats[num_boat*2] - delta * 2 >= -self.max_loc and self.boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    self.boats[num_boat*2] -= delta * 2
                    self.boats[num_boat*2+1] -= delta * 2
            if num_move == 6:   #S
                if self.boats[num_boat*2+1] + delta * 2 <= self.max_loc:
                    self.boats[num_boat*2+1] += delta * 2

        else:                                       #SAVE PERSON
            a = action_schema - 7*len(self.boats)//2
            num_boat = a // len(self.saved)
            num_person = a % len(self.saved)       

            if (self.boats[num_boat*2]+self.boats[num_boat*2+1]) >= self.distances[num_person] \
                and (self.boats[num_boat*2+1]-self.boats[num_boat*2]) >= self.distances[num_person] \
                and (self.boats[num_boat*2]+self.boats[num_boat*2+1]) <= self.distances[num_person]+5 \
                and (self.boats[num_boat*2+1]-self.boats[num_boat*2]) <= self.distances[num_person]+5:

                self.saved[num_person] = 1

        # GOAL

        done = all(self.saved)        

        return (self.boats,self.saved), 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        return self.boats,self.saved    

    def show(self, action, obs):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0]

        boats,saved = obs

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)
            
        delta = deltas[0]

        if action_schema < 7*len(boats)//2:    #MOVE
            a = action_schema
            num_boat = a // 7
            num_move = a % 7
            if num_move == 0:   #NE
                if boats[num_boat*2] + delta * 1.5 <= self.max_loc and boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    return f'(go_north_east b{num_boat} {delta})'
            if num_move == 1:   #NW
                if boats[num_boat*2] - delta * 1.5 >= -self.max_loc and boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    return f'(go_north_west b{num_boat} {delta})'
            if num_move == 2:   #E
                if boats[num_boat*2] + delta * 3 <= self.max_loc:
                    return f'(go_east b{num_boat} {delta})'
            if num_move == 3:   #W
                if boats[num_boat*2] - delta * 3 >= -self.max_loc:
                    return f'(go_west b{num_boat} {delta})'
            if num_move == 4:   #SW
                if boats[num_boat*2] + delta * 2 <= self.max_loc and boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    return f'(go_south_west b{num_boat} {delta})'
            if num_move == 5:   #SE
                if boats[num_boat*2] - delta * 2 >= -self.max_loc and boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    return f'(go_south_east b{num_boat} {delta})'
            if num_move == 6:   #S
                if boats[num_boat*2+1] + delta * 2 <= self.max_loc:
                    return f'(go_south b{num_boat} {delta})'
        else:                                       #SAVE PERSON
            a = action_schema - 7*len(boats)//2
            num_boat = a // len(self.saved)
            num_person = a % len(self.saved)       

            if (boats[num_boat*2]+boats[num_boat*2+1]) >= self.distances[num_person] \
                and (boats[num_boat*2+1]-boats[num_boat*2]) >= self.distances[num_person] \
                and (boats[num_boat*2]+boats[num_boat*2+1]) <= self.distances[num_person]+5 \
                and (boats[num_boat*2+1]-boats[num_boat*2]) <= self.distances[num_person]+5:

                return f'(save_person b{num_boat} p{num_person})'


        
    def is_applicable(self, action, state):
        boats,_ = state

        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = round(bounds[0] + (bounds[1] - bounds[0]) * v)
            
        delta = deltas[0]

        if action_schema < 7*len(boats)//2:    #MOVE
            a = action_schema
            num_boat = a // 7
            num_move = a % 7
            if num_move == 0:   #NE
                if boats[num_boat*2] + delta * 1.5 <= self.max_loc and boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    return True
            if num_move == 1:   #NW
                if boats[num_boat*2] - delta * 1.5 >= -self.max_loc and boats[num_boat*2+1] + delta * 1.5 <= self.max_loc:
                    return True
            if num_move == 2:   #E
                if boats[num_boat*2] + delta * 3 <= self.max_loc:
                    return True
            if num_move == 3:   #W
                if boats[num_boat*2] - delta * 3 >= -self.max_loc:
                    return True
            if num_move == 4:   #SW
                if boats[num_boat*2] + delta * 2 <= self.max_loc and boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    return True
            if num_move == 5:   #SE
                if boats[num_boat*2] - delta * 2 >= -self.max_loc and boats[num_boat*2+1] - delta * 2 >= -self.max_loc:
                    return True
            if num_move == 6:   #S
                if boats[num_boat*2+1] + delta * 2 <= self.max_loc:
                    return True

        else:                                       #SAVE PERSON
            a = action_schema - 7*len(boats)//2
            num_boat = a // len(self.saved)
            num_person = a % len(self.saved)       

            if (boats[num_boat*2]+boats[num_boat*2+1]) >= self.distances[num_person] \
                and (boats[num_boat*2+1]-boats[num_boat*2]) >= self.distances[num_person] \
                and (boats[num_boat*2]+boats[num_boat*2+1]) <= self.distances[num_person]+5 \
                and (boats[num_boat*2+1]-boats[num_boat*2]) <= self.distances[num_person]+5:

                return True
                
        return False

    def sample_action(self):
        choices = list(range(7*len(self.boats)//2))
        for b in range(len(self.boats)//2):
            for p in range(len(self.saved)):
                if (self.boats[b*2]+self.boats[b*2+1]) >= self.distances[p] \
                    and (self.boats[b*2+1]-self.boats[b*2]) >= self.distances[p] \
                    and (self.boats[b*2]+self.boats[b*2+1]) <= self.distances[p]+5 \
                    and (self.boats[b*2+1]-self.boats[b*2]) <= self.distances[p]+5:
                    choices.append(7*len(self.boats)//2+(b*len(self.saved)+p))

        return random.choice(choices), [random.random() for _ in range(1)]


    def goal_counting(self,state):
        _,saved = state
        return len(saved)-sum(saved)
    


def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]

# PROBLEM
random.seed(2)

num_boats = 3
num_people = 7


boats = generate_random_integers(num_boats*2, -1, 1)
distances = generate_random_integers(num_people//2,-120,-70)+generate_random_integers(num_people-num_people//2,70,120)
max_loc = 150

import subprocess

# Pass parameters to the Python script
r = subprocess.run(['python', 'generators/sailing.py', str(boats), str(distances), str(max_loc)],capture_output=True, text=True)

with open(f'problems/sailing/p{num_boats}-{num_people}.pddl','w') as f:
    print(r.stdout, file=f)

for i in range(10):
    # ALGORITHM

    t = time.time()

    from queue import PriorityQueue
    import itertools

    seed = 5
    alpha = 0.01


    # Create a counter to generate unique IDs for tie-breaking
    counter = itertools.count()
    open_list = PriorityQueue()

    env = Sailing(boats,distances,max_loc)
    env.seed(seed+i)
    obs = env.reset()


    h = env.goal_counting 

    open_list.put((h(obs),counter,obs))
    done = False

    father = {str(obs): '-'}
    plan = {str(obs): '-'}
    num_visited = {str(obs): 1}

    its = 0

    while not open_list.empty() and not done:
        its += 1
        retrieve = open_list.get()
        obs = retrieve[2]

        env.boats, env.saved = copy.deepcopy(obs)

        K = 1
        
        for iqwer in range(K):
            # Generate a new applicable successor
            is_applicable = False
            dead_end = 0
            while not is_applicable and dead_end < 100: # To count for dead ends 
                a = env.sample_action()
                is_applicable = env.is_applicable(a,copy.deepcopy(obs))
                dead_end += 1

            if dead_end < 100:
                new_obs, _, done, _ = env.step(a)
                if str(new_obs) not in father.keys() or not father[str(new_obs)]:
                    father[str(new_obs)] = str(obs)
                    plan[str(new_obs)] = env.show(a,obs)

                if str(obs) in num_visited.keys():
                    num_visited[str(obs)] += 1
                else:
                    num_visited[str(obs)] = 1

                open_list.put((h(new_obs),next(counter),new_obs))
                open_list.put((h(obs)+num_visited[str(obs)]**alpha,next(counter),obs))

    with open(f'plans/our_approach/sailing/plan{num_boats}-{num_people}_{i}.pddl','w') as file:
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
