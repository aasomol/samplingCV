import gym
from gym import spaces
import numpy as np
import random 
import time
import copy

# Function to generate a list of n random integers
def generate_random_integers(n, lower_bound, upper_bound, seed=None):
    random.seed(seed)
    return [random.randint(lower_bound, upper_bound) for _ in range(n)]


class Terraria(gym.Env):

    def __init__(self,goal_bed, goal_ivy, goal_chest, goal_sword):
        
        self.goal_bed = goal_bed
        self.goal_ivy = goal_ivy
        self.goal_chest = goal_chest
        self.goal_sword = goal_sword
        
        self.things = ['cob','iron','mahogany','lead','chain','silk','platinum','bed','sword','chest','wood','ivychest']
        self.stock = {i:0 for i in self.things}

        self.locs = ['home','workshop','forest','mahogany','mine']
        self.at = 0

        self.ready_loom = 0
        self.ready_sawmill = 0
        self.ready_anvil = 0

        self.placed_beds = 0
        self.placed_swords = 0
        self.placed_chests = 0
        self.placed_ivychests = 0

        self.tot_grounded = 20

        self.bounds = [[(5,100),(10,60),(5,60),(5,60),(1,10),(5,60),(3,30)] for _ in range(self.tot_grounded)] 

        self.action_space = spaces.Tuple((
            spaces.Discrete(self.tot_grounded),  # Choose which action to sample from
            spaces.Box(0, 1, shape=[3])  # Sample value. Then scale
        ))
        

        
    def step(self, action, verbose=False):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0 for _ in range(7)]

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = (bounds[0] + (bounds[1] - bounds[0]) * v)
            
        product, cob, iron, lead, chain, platinum, furniture= deltas

        # Transition system
        
        if action_schema == 0: # CUT_A_TREE
            if self.at == 2:
                self.stock['wood'] += product
        elif action_schema == 1: # CUT_MAHOGANY_TREE
            if self.at == 3:
                self.stock['mahogany'] += product
        elif action_schema == 2: # FIND_RESOURCES
            if self.at == 4 and cob + iron + lead + chain + platinum <= 120:
                self.stock['cob'] += cob
                self.stock['iron'] += iron
                self.stock['lead'] += lead
                self.stock['chain'] += chain
                self.stock['platinum'] += platinum
        elif action_schema == 3: # MAKE_SILK
            if self.at == 1 and self.ready_loom and self.stock['cob'] >= 7 * product:
                self.stock['silk'] += product
                self.stock['cob'] -= 7 * product
        elif action_schema == 4: # ASSEMBLE_A_LOOM
            if self.at == 1 and self.ready_sawmill and not self.ready_loom and self.stock['wood'] >= 12:
                self.stock['wood'] -= 12
                self.ready_loom = 1
        elif action_schema == 5: # ASSEMBLE_A_SAWMILL
            if self.at == 1 and self.stock['wood'] >= 10 and self.stock['iron'] >= 2 and \
                self.stock['chain'] >= 1 and not self.ready_sawmill:
                self.stock['wood'] -= 10
                self.stock['iron'] -= 2
                self.stock['chain'] -= 1
                self.ready_sawmill = 1
        elif action_schema == 6: # ASSEMBLE_AN_ANVIL
            if self.at == 1 and self.stock['iron'] >= 5 and not self.ready_anvil:
                self.stock['iron'] -= 5
                self.ready_anvil = 1
        elif action_schema == 7: #ASSEMBLE_BEDS
            if self.at == 1 and self.ready_sawmill and self.stock['wood'] >= 15 * furniture and \
                self.stock['silk'] >= 5 * furniture:
                self.stock['bed'] += furniture
                self.stock['wood'] -= 15 * furniture
                self.stock['silk'] -= 5 * furniture
        elif action_schema == 8: #PRODUCE_CHESTS
            if self.at == 1 and self.stock['wood'] >= 8 * furniture and self.stock['lead'] >= 2 * furniture and \
                self.stock['iron'] >= 2 * furniture:
                self.stock['chest'] += furniture
                self.stock['wood'] -= 8 * furniture
                self.stock['lead'] -= 2 * furniture
                self.stock['iron'] -= 2 * furniture
        elif action_schema == 9: #PRODUCE_CHESTS
            if self.at == 1 and self.stock['mahogany'] >= 8 * furniture and self.stock['lead'] >= 2 * furniture and \
                self.stock['iron'] >= 2 * furniture:
                self.stock['ivychest'] += furniture
                self.stock['mahogany'] -= 8 * furniture
                self.stock['lead'] -= 2 * furniture
                self.stock['iron'] -= 2 * furniture
        elif action_schema == 10: #PRODUCE_PLATINUM_SWORDS
            if self.at == 1 and self.ready_anvil and self.stock['platinum'] >= 5 * furniture:
                self.stock['sword'] += furniture
                self.stock['platinum'] -= 5 * furniture
        elif action_schema == 11: #PLACE_BEDS
            if self.at == 0 and self.stock['bed'] >= self.goal_bed:
                self.stock['bed'] -= self.goal_bed
                self.placed_beds = 1
        elif action_schema == 12: #PLACE_SWORDS
            if self.at == 0 and self.stock['sword'] >= self.goal_sword:
                self.stock['sword'] -= self.goal_sword
                self.placed_swords = 1
        elif action_schema == 13: #PLACE_CHESTS
            if self.at == 0 and self.stock['chest'] >= self.goal_chest:
                self.stock['chest'] -= self.goal_chest
                self.placed_chests = 1
        elif action_schema == 14: #PLACE_IVY_CHESTS
            if self.at == 0 and self.stock['ivychest'] >= self.goal_ivy:
                self.stock['ivychest'] -= self.goal_ivy
                self.placed_ivychests = 1
        else: #GOTO
            goto = action_schema - 15
            if self.at != goto:
                self.at = goto

        # GOAL

        done = self.placed_beds and self.placed_chests and self.placed_ivychests and self.placed_swords
    
        return [self.at,self.stock,self.ready_anvil,self.ready_loom,self.ready_sawmill,self.placed_beds,self.placed_chests,self.placed_ivychests,self.placed_swords] , 0, done, {}
        
        
    def seed(self, seed):
        self.action_space.seed(seed)
        np.random.seed(seed)

    def reset(self):
        return [self.at,self.stock,self.ready_anvil,self.ready_loom,self.ready_sawmill,self.placed_beds,self.placed_chests,self.placed_ivychests,self.placed_swords]       

    def show(self, action, state):
        action_schema = action[0]
        value_inputs = action[1]
        deltas = [0 for _ in range(7)]

        at,stock,ready_anvil,ready_loom,ready_sawmill,placed_beds,placed_chests,placed_ivychests,placed_swords = state

        for n,v in enumerate(value_inputs):
        
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = (bounds[0] + (bounds[1] - bounds[0]) * v)
            
        product, cob, iron, lead, chain, platinum, furniture= deltas
        
        if action_schema == 0: # CUT_A_TREE
            if at == 2:
                return f'(cut_a_tree Forest {product})'
        elif action_schema == 1: # CUT_MAHOGANY_TREE
            if at == 3:
                return f'(cut_mahogany_tree MahoganyForest {product})'
        elif action_schema == 2: # FIND_RESOURCES
            if at == 4 and cob + iron + lead + chain + platinum <= 120:
                return f'(find_resources Mine {cob} {iron} {lead} {chain} {platinum})'
        elif action_schema == 3: # MAKE_SILK
            if at == 1 and ready_loom and stock['cob'] >= 7 * product:
                return f'(make_silk Workshop {product})'
        elif action_schema == 4: # ASSEMBLE_A_LOOM
            if at == 1 and ready_sawmill and not ready_loom and stock['wood'] >= 12:
                return f'(assemble_a_loom Workshop)'
        elif action_schema == 5: # ASSEMBLE_A_SAWMILL
            if at == 1 and stock['wood'] >= 10 and stock['iron'] >= 2 and stock['chain'] >= 1 and not ready_sawmill:
                return f'(assemble_a_sawmill Workshop)'
        elif action_schema == 6: # ASSEMBLE_AN_ANVIL
            if at == 1 and stock['iron'] >= 5 and not ready_anvil:
                return f'(assemble_an_anvil Workshop)'
        elif action_schema == 7: #ASSEMBLE_BEDS
            if at == 1 and ready_sawmill and stock['wood'] >= 15 * furniture and stock['silk'] >= 5 * furniture:
                return f'(assemble_beds Workshop {furniture})'
        elif action_schema == 8: #PRODUCE_CHESTS
            if at == 1 and stock['wood'] >= 8 * furniture and stock['lead'] >= 2 * furniture and stock['iron'] >= 2 * furniture:
                return f'(produce_chests Workshop {furniture})'
        elif action_schema == 9: #PRODUCE_IVY_CHESTS
            if at == 1 and stock['mahogany'] >= 8 * furniture and stock['lead'] >= 2 * furniture and stock['iron'] >= 2 * furniture:
                return f'(produce_ivy_chests Workshop {furniture})'
        elif action_schema == 10: #PRODUCE_PLATINUM_SWORDS
            if at == 1 and ready_anvil and stock['platinum'] >= 5 * furniture:
                return f'(produce_platinum_swords Workshop {furniture})'
        elif action_schema == 11: #PLACE_BEDS
            if at == 0 and stock['bed'] >= self.goal_bed:
                return f'(place_beds)'
        elif action_schema == 12: #PLACE_SWORDS
            if at == 0 and stock['sword'] >= self.goal_sword:
                return f'(place_swords)'
        elif action_schema == 13: #PLACE_CHESTS
            if at == 0 and stock['chest'] >= self.goal_chest:
                return f'(place_chests)'
        elif action_schema == 14: #PLACE_IVY_CHESTS
            if at == 0 and stock['ivychest'] >= self.goal_ivy:
                return f'(place_ivy_chests)'
        else: #GOTO
            goto = action_schema - 15
            return f'(goto {self.locs[at]} {self.locs[goto]})'

        
    def is_applicable(self, action, state):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0 for _ in range(7)]

        at,stock,ready_anvil,ready_loom,ready_sawmill,placed_beds,placed_chests,placed_ivychests,placed_swords = state

        for n,v in enumerate(value_inputs):
            bounds = self.bounds[action_schema][n]
            deltas[n] = (bounds[0] + (bounds[1] - bounds[0]) * v)
            
        product, cob, iron, lead, chain, platinum, furniture = deltas
        
        if action_schema == 0: # CUT_A_TREE
            if at == 2:
                return True
        elif action_schema == 1: # CUT_MAHOGANY_TREE
            if at == 3:
                return True
        elif action_schema == 2: # FIND_RESOURCES
            if at == 4 and cob + iron + lead + chain + platinum <= 120:
                return True
        elif action_schema == 3: # MAKE_SILK
            if at == 1 and ready_loom and stock['cob'] >= 7 * product:
                return True
        elif action_schema == 4: # ASSEMBLE_A_LOOM
            if at == 1 and ready_sawmill and not ready_loom and stock['wood'] >= 12:
                return True
        elif action_schema == 5: # ASSEMBLE_A_SAWMILL
            if at == 1 and stock['wood'] >= 10 and stock['iron'] >= 2 and stock['chain'] >= 1 and not ready_sawmill:
                return True
        elif action_schema == 6: # ASSEMBLE_AN_ANVIL
            if at == 1 and stock['iron'] >= 5 and not ready_anvil:
                return True
        elif action_schema == 7: #ASSEMBLE_BEDS
            if at == 1 and ready_sawmill and stock['wood'] >= 15 * furniture and stock['silk'] >= 5 * furniture:
                return True
        elif action_schema == 8: #PRODUCE_CHESTS
            if at == 1 and stock['wood'] >= 8 * furniture and stock['lead'] >= 2 * furniture and stock['iron'] >= 2 * furniture:
                return True
        elif action_schema == 9: #PRODUCE_IVY_CHESTS
            if at == 1 and stock['mahogany'] >= 8 * furniture and stock['lead'] >= 2 * furniture and stock['iron'] >= 2 * furniture:
                return True
        elif action_schema == 10: #PRODUCE_PLATINUM_SWORDS
            if at == 1 and ready_anvil and stock['platinum'] >= 5 * furniture:
                return True
        elif action_schema == 11: #PLACE_BEDS
            if at == 0 and stock['bed'] >= self.goal_bed:
                return True
        elif action_schema == 12: #PLACE_SWORDS
            if at == 0 and stock['sword'] >= self.goal_sword:
                return True
        elif action_schema == 13: #PLACE_CHESTS
            if at == 0 and stock['chest'] >= self.goal_chest:
                return True
        elif action_schema == 14: #PLACE_IVY_CHESTS
            if at == 0 and stock['ivychest'] >= self.goal_ivy:
                return True
        else: #GOTO
            goto = action_schema - 15
            return at != goto

    def sample_action(self):
        choices = [15,16,17,18,19]
        if self.at == 2:
            choices.append(0)
        elif self.at == 3:
            choices.append(1)
        elif self.at == 4:
            choices.append(2)
        elif self.at == 1:
            choices += [3,4,5,6,7,8,9,10]
        elif self.at == 0:
            choices += [11,12,13,14]

        return random.choice(choices), [random.random() for _ in range(7)]


    def goal_counting(self,state):
        at,stock,ready_anvil,ready_loom,ready_sawmill,placed_beds,placed_chests,placed_ivychests,placed_swords = state
        
        return 4 - placed_beds - placed_chests - placed_ivychests - placed_swords
    
    def get_rounded_action(self,action):
        action_schema = action[0]
        value_inputs = action[1] 
        deltas = [0 for _ in range(7)]

        for n,v in enumerate(value_inputs):
            bounds = self.bounds[action_schema][n] 
            
            deltas[n] = (bounds[0] + (bounds[1] - bounds[0]) * v)
            
        product, cob, iron, lead, chain, platinum, furniture = deltas

        if action_schema == 0: # CUT_A_TREE
            return action_schema,product
        elif action_schema == 1: # CUT_MAHOGANY_TREE
            return action_schema,product
        elif action_schema == 2: # FIND_RESOURCES
            return action_schema,cob,iron,lead,chain,platinum
        elif action_schema == 3: # MAKE_SILK
            return action_schema,product
        elif action_schema == 4: # ASSEMBLE_A_LOOM
            return action_schema
        elif action_schema == 5: # ASSEMBLE_A_SAWMILL
            return action_schema
        elif action_schema == 6: # ASSEMBLE_AN_ANVIL
            return action_schema
        elif action_schema == 7: #ASSEMBLE_BEDS
            return action_schema,furniture
        elif action_schema == 8: #PRODUCE_CHESTS
            return action_schema,furniture
        elif action_schema == 9: #PRODUCE_IVY_CHESTS
            return action_schema,furniture
        elif action_schema == 10: #PRODUCE_PLATINUM_SWORDS
            return action_schema,furniture
        elif action_schema == 11: #PLACE_BEDS
            return action_schema
        elif action_schema == 12: #PLACE_SWORDS
            return action_schema
        elif action_schema == 13: #PLACE_CHESTS
            return action_schema
        elif action_schema == 14: #PLACE_IVY_CHESTS
            return action_schema
        else: #GOTO
            return action_schema


# PROBLEM
max_its = 2_000_000


random.seed(1)
locs = set()
products = 300

# Pass parameters to the Python script
import subprocess

r = subprocess.run(['python', 'generators/terraria.py', str(products), str(products), str(products), str(products)],capture_output=True, text=True)

with open(f'problems/terraria/p{products}.pddl','w') as f:
    print(r.stdout, file=f)


# ALGORITHM

for i in range(10):
    t = time.time()

    from queue import PriorityQueue

    seed = 5

    alpha = 0.01

    open_list = PriorityQueue()

    env = Terraria(products,products,products,products)

    env.seed(seed+i)
    obs = env.reset()

    h = env.goal_counting 

    open_list.put((h(obs),0,obs))
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
        obs = retrieve[2]

        [env.at,env.stock,env.ready_anvil,env.ready_loom,env.ready_sawmill,env.placed_beds,env.placed_chests,env.placed_ivychests,env.placed_swords] = copy.deepcopy(obs)

        # Generate a new applicable successor
        is_applicable = False
        dead_end = 0
        while not is_applicable and dead_end < 100: # To count for dead ends 
            a = env.sample_action()
            is_applicable = env.is_applicable(a,copy.deepcopy(obs))
            dead_end += 1
            if is_applicable and str(obs) in applied.keys() and env.get_rounded_action(a) in applied[str(obs)]:
                is_applicable = False
        
        applied[str(obs)].append(env.get_rounded_action(a))

        if dead_end < 100:

            new_obs, _, done, _ = env.step(a)

            if str(new_obs) not in father.keys() or not father[str(new_obs)]:
                father[str(new_obs)] = str(obs)
                plan[str(new_obs)] = env.show(a,obs)

            if str(obs) in num_visited.keys():
                num_visited[str(obs)] += 1
            else:
                num_visited[str(obs)] = 1

            open_list.put((h(new_obs),its,new_obs))
            open_list.put((h(obs)+num_visited[str(obs)]**alpha,its,obs))

    with open(f'plans/S-GBFS/terraria/plan{products}_{i}.pddl','w') as file:
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
