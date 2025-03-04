(define (domain terraria_truck2)

(:types     
    cobweb iron_bar lead_bar chain platinum_bar - items
    silk bed wood mahogany_wood ivy_chest chest platinum_sword - items
    location items - object
)   

(:predicates
    (placed_beds)
    (placed_chests)
    (placed_swords)
    (placed_ivy_chests)
    (ready_loom)
    (ready_sawmill)
    (ready_workbench)
    (ready_anvil)
    (can_assemble ?loc - location)
    (can_lumber ?loc - location)
    (can_mine ?loc - location)
    (can_lumber_mahogany ?loc - location)
    (at ?loc - location)
    (available)
)

(:functions   
    (stock ?e - items)
    (numeric_goal_bed)
    (numeric_goal_ivy)
    (numeric_goal_chest)
    (numeric_goal_sword)                    
)

(:durative-action cut_a_tree
:parameters(?a - wood ?loc1 - location)
:control (?w - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at start (>= ?w 5))
                (at start (<= ?w 100)) ;; you can get up to 100 woods from a tree
                )
:effect (and    
                (at start (not (available)))
                (at end (available))

                (at start (increase (stock ?a) ?w))
))

(:durative-action cut_mahogany_tree
:parameters(?a - mahogany_wood ?loc1 - location)
:control (?w - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (can_lumber_mahogany ?loc1))
                (at start (at ?loc1))
                (at start (>= ?w 5))
                (at start (<= ?w 100)) ;; you can get up to 100 woods from a tree
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?a) ?w))
))

(:durative-action find_resources
:parameters(?c - cobweb ?i - iron_bar ?lb - lead_bar ?pb - platinum_bar ?ch - chain ?loc1 - location)
:control (?cob ?iron ?lead ?chain_found ?platinum - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (can_mine ?loc1))
                (at start (at ?loc1))
                (at start (>= ?chain_found 1))
                (at start (<= ?chain_found 10))
                (at start (>= ?iron 5))
                (at start (<= ?iron 60))
                (at start (>= ?lead 5))
                (at start (<= ?lead 60))
				(at start (>= ?platinum 5))
                (at start (<= ?platinum 60))
                (at start (>= ?cob 10)) ;; cobweb is quite common. there is no way not finding it.
                (at start (<= ?cob 60))
                (at start (<= (+ ?cob (+ ?iron (+ ?chain_found (+ ?lead ?platinum ) ) ) )  120) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?c) ?cob))
                (at start (increase (stock ?i) ?iron))
                (at start (increase (stock ?lb) ?lead))
				(at start (increase (stock ?pb) ?platinum))
                (at start (increase (stock ?ch) ?chain_found))
))

(:durative-action make_silk
:parameters(?s1 - silk ?cob - cobweb ?loc1 - location)
:control (?silkmade - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_loom))
                (at start (can_assemble ?loc1))
                (at start (at ?loc1))
                (at start (>= ?silkmade 5))
                (at start (<= ?silkmade 100))
                (at start (>= (stock ?cob) (* ?silkmade 7)) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?s1) ?silkmade))
                (at start (decrease (stock ?cob) (* ?silkmade 7) ))
))

(:durative-action assemble_a_loom
:parameters(?w1 - wood ?loc1 - location)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (not (ready_loom)))
                (at start (ready_sawmill))
                (at start (>= (stock ?w1) 12) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1)) 
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (decrease (stock ?w1) 12))
                (at start (ready_loom))
))

(:durative-action assemble_a_sawmill
:parameters(?w1 - wood ?iron - iron_bar ?ch - chain ?loc1 - location)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (not (ready_sawmill)))
                (at start (ready_workbench))
                (at start (>= (stock ?w1) 10) ) 
                (at start (>= (stock ?iron) 2) )
                (at start (>= (stock ?ch) 1) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) 0) )
                (at start (>= (stock ?iron) 0) )
                (at start (>= (stock ?ch) 0) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (decrease (stock ?w1) 10))
                (at start (decrease (stock ?iron) 2) )
                (at start (decrease (stock ?ch) 1) )
                (at start (ready_sawmill))
))

(:durative-action assemble_an_anvil
:parameters(?iron - iron_bar ?loc1 - location)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_workbench))
                (at start (>= (stock ?iron) 5) )
				(at start (>= (stock ?iron) 0) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (not (ready_anvil)))
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (decrease (stock ?iron) 5) )
                (at start (ready_anvil))
))

(:durative-action assemble_beds
:parameters(?w1 - wood ?s1 - silk ?b - bed ?loc1 - location)
:control (?beds - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_sawmill)) ; made on sawmill
                (at start (>= ?beds 3))
                (at start (<= ?beds 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) (* ?beds 15) ) ) 
                (at start (>= (stock ?s1) (* ?beds 5) ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?s1) 0 ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?s1) 0 ) )
				(at start (>= (stock ?b) 0 ) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?b) ?beds) )
                (at start (decrease (stock ?w1) (* ?beds 15) ) )
                (at start (decrease (stock ?s1) (* ?beds 5) ) )
                
))

(:durative-action produce_chests
:parameters(?c - chest ?w1 - wood ?lb - lead_bar ?i - iron_bar ?loc1 - location)
:control (?chests - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_workbench)) ; made on sawmill
                (at start (>= ?chests 3))
                (at start (<= ?chests 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) (* ?chests 8) ) ) 
                (at start (>= (stock ?lb) (* ?chests 2) ) )
                (at start (>= (stock ?i) (* ?chests 2) ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?lb) 0 ) )
                (at start (>= (stock ?i) 0 ) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?c) ?chests) )
                (at start (decrease (stock ?w1) (* ?chests 8) ) )
                (at start (decrease (stock ?lb) (* ?chests 2) ) )
                (at start (decrease (stock ?i) (* ?chests 2) ) )
                
))

(:durative-action produce_ivy_chests
:parameters(?c - ivy_chest ?mw - mahogany_wood ?lb - lead_bar ?i - iron_bar ?loc1 - location)
:control (?chests - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_workbench)) ; made on sawmill
                (at start (>= ?chests 3))
                (at start (<= ?chests 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?mw) (* ?chests 8) ) ) 
                (at start (>= (stock ?lb) (* ?chests 2) ) )
                (at start (>= (stock ?i) (* ?chests 2) ) )
                (at start (>= (stock ?mw) 0 ) ) 
                (at start (>= (stock ?lb) 0 ) )
                (at start (>= (stock ?i) 0 ) )
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?c) ?chests) )
                (at start (decrease (stock ?mw) (* ?chests 8) ) )
                (at start (decrease (stock ?lb) (* ?chests 2) ) )
                (at start (decrease (stock ?i) (* ?chests 2) ) )
                
))


(:durative-action produce_platinum_swords
:parameters(?s - platinum_sword ?pb - platinum_bar ?loc1 - location)
:control (?swords - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (ready_anvil)) ; made on anvil
                (at start (>= ?swords 3))
                (at start (<= ?swords 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?pb) (* ?swords 5) ) ) 
				(at start (>= (stock ?pb) 0 ) ) 
				(at start (>= (stock ?s) 0 ) ) 
                )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?s) ?swords) )
                (at start (decrease (stock ?pb) (* ?swords 5) ) )
                
))

(:durative-action Go_to
:parameters (?loc1 ?loc2 - location)
:duration (= ?duration 0.001 )
:condition (and
                (at start (available))
                (at start (at ?loc1) )
                )
:effect (and       
                (at start (not (available)))
                (at end (available))
            (at start (not (at ?loc1)))
            (at start (at ?loc2))
           
        ))

(:durative-action place_beds
:parameters (?b - bed)
:duration (= ?duration 0.001)
:condition (and     
                (at start (available))

                (at start (>= (stock ?b) (numeric_goal_bed)) )
                    
                    (at start (>= (stock ?b) 0) )  
					 )
:effect (and        
                (at start (not (available)))
                (at end (available))
                    (at start (placed_beds)) 
                    (at start (decrease (stock ?b) (numeric_goal_bed) ))
                     ) )

(:durative-action place_swords
:parameters (?s - platinum_sword)
:duration (= ?duration 0.001)
:condition (and     
                (at start (available))

(at start (>= (stock ?s) (numeric_goal_sword)) )
                    
                    (at start (>= (stock ?s) 0) )  
					 )
:effect (and        
                (at start (not (available)))
                (at end (available))
                    (at start (placed_swords)) 
                    (at start (decrease (stock ?s) (numeric_goal_sword)))
                     ) )

(:durative-action place_chests
:parameters (?c - chest)
:duration (= ?duration 0.001)
:condition (and     
                (at start (available))

                    (at start (>= (stock ?c) (numeric_goal_chest)) )
                    
                    (at start (>= (stock ?c) 0) ) )
:effect (and        
                (at start (not (available)))
                (at end (available))
                    (at start (placed_chests)) 
                    (at start (decrease (stock ?c) (numeric_goal_chest) ))
                     ) )

(:durative-action place_ivy_chests
:parameters (?c - ivy_chest)
:duration (= ?duration 0.001)
:condition (and     
                (at start (available))

                    (at start (>= (stock ?c) (numeric_goal_ivy) ) )
                    
                    (at start (>= (stock ?c) 0) ) )
:effect (and        
                (at start (not (available)))
                (at end (available))
                    (at start (placed_ivy_chests)) 
                    (at start (decrease (stock ?c) (numeric_goal_ivy) ))
                     ) )
)
