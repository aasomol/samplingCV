(define (domain procurement)
(:requirements :typing :continuous)

(:types     itemA itemB itemC itemD itemE itemF itemG itemH itemI itemJ itemK itemL itemM itemN itemO itemP itemQ itemR itemS - item
            supplier customer workshop - location
)

(:predicates
    (can_supply_D ?loc - supplier)
    (can_supply_E ?loc - supplier)
    (can_supply_G ?loc - supplier)
    (can_supply_I ?loc - supplier)
    (can_supply_J ?loc - supplier)
    (can_supply_N ?loc - supplier)
    (can_supply_O ?loc - supplier)
    (can_supply_Q ?loc - supplier)
    (can_supply_R ?loc - supplier)
    (can_supply_X ?loc - supplier)
    (can_supply_S ?loc - supplier)
    (can_supply_P ?loc - supplier)
    (can_produce_A ?loc - workshop)
    (can_produce_B ?loc - workshop)
    (can_produce_C ?loc - workshop)
    (can_produce_F ?loc - workshop)
    (can_produce_H ?loc - workshop)
    (can_produce_K ?loc - workshop)
    (can_produce_L ?loc - workshop)
    (can_produce_M ?loc - workshop)
    (can_produce_P ?loc - workshop)
    (can_produce_S ?loc - workshop)
    (delivered ?a - item ?loc - customer)
    (at ?loc1 - location)
    (available)
)

(:functions   
    (stock ?e - item) 
    (item-goal ?e - item) 
)

(:durative-action produce_A ;; level 0
:parameters (?a - itemA ?b - itemB ?c - itemC ?d - itemD ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_A ?loc1))
                (at start (at ?loc1)) 
                (at start (>= (stock ?a) 0))
                (at start (>= (stock ?b) (* ?batchsize 2) )) 
                (at start (>= (stock ?c) ?batchsize))  
                (at start (>= (stock ?d) (* ?batchsize 2) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?a) ?batchsize))
                (at start (decrease (stock ?c) ?batchsize )) 
                (at start (decrease (stock ?d) (* ?batchsize 2) )) 
                (at start (decrease (stock ?b) (* ?batchsize 2) )) 
)
)

(:durative-action produce_B ;; level 1
:parameters (?b - itemB ?e - itemE ?f - itemF ?g - itemG ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and  
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_B ?loc1))
                (at start (at ?loc1))                 
                (at start (>= (stock ?b) 0))
                (at start (>= (stock ?e) (* ?batchsize 2) )) 
                (at start (>= (stock ?f) (* ?batchsize 1) )) 
                (at start (>= (stock ?g) (* ?batchsize 2) )) 

            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?b) ?batchsize)) 
		(at start (decrease (stock ?e) (* ?batchsize 2) )) 
		(at start (decrease (stock ?f) (* ?batchsize 1) )) 
		(at start (decrease (stock ?g) (* ?batchsize 2) )) 
)
)

(:durative-action produce_C ;; level 1
:parameters (?c - itemC ?h - itemH ?i - itemI ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available)) 
                (at start (can_produce_C ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?c) 0))
                (at start (>= (stock ?h) (* ?batchsize 1) )) 
                (at start (>= (stock ?i) (* ?batchsize 2) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?c) ?batchsize))  
		(at start (decrease (stock ?h) (* ?batchsize 1) )) 
		(at start (decrease (stock ?i) (* ?batchsize 2) )) 
)
)

(:durative-action produce_F ;; level 2
:parameters (?f - itemF ?j - itemJ ?k - itemK ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_F ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?f) 0))
                (at start (>= (stock ?k) (* ?batchsize 1) )) 
                (at start (>= (stock ?j) (* ?batchsize 4) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?f) ?batchsize))  
		(at start (decrease (stock ?k) (* ?batchsize 1) )) 
		(at start (decrease (stock ?j) (* ?batchsize 4) )) 
)
)

(:durative-action produce_H ;; level 2
:parameters (?h - itemH ?l - itemL ?m - itemM ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_H ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?h) 0))
                (at start (>= (stock ?l) (* ?batchsize 5) )) 
                (at start (>= (stock ?m) (* ?batchsize 2) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?h) ?batchsize))  
		(at start (decrease (stock ?l) (* ?batchsize 5) )) 
		(at start (decrease (stock ?m) (* ?batchsize 2) )) 
)
)

(:durative-action produce_K ;; level 3
:parameters (?k - itemK ?n - itemN ?o - itemO ?p - itemP ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_K ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?k) 0))
                (at start (>= (stock ?n) (* ?batchsize 6) )) 
                (at start (>= (stock ?o) (* ?batchsize 2) )) 
                (at start (>= (stock ?p) (* ?batchsize 1) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?k) ?batchsize))  
		(at start (decrease (stock ?n) (* ?batchsize 6) )) 
		(at start (decrease (stock ?o) (* ?batchsize 2) )) 
		(at start (decrease (stock ?p) (* ?batchsize 1) )) 
)
)

(:durative-action produce_L ;; level 3
:parameters (?l - itemL ?q - itemQ ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_L ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?l) 0))
                (at start (>= (stock ?q) (* ?batchsize 2) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?l) ?batchsize))  
		(at start (decrease (stock ?q) (* ?batchsize 2) )) 
)
)

(:durative-action produce_M ;; level 3
:parameters (?m - itemM ?r - itemR ?s - itemS ?loc1 - workshop)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_produce_M ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?m) 0))
                (at start (>= (stock ?r) (* ?batchsize 3) )) 
                (at start (>= (stock ?s) (* ?batchsize 2) )) 
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?m) ?batchsize))  
		(at start (decrease (stock ?r) (* ?batchsize 3) )) 
		(at start (decrease (stock ?s) (* ?batchsize 2) )) 
)
)

(:durative-action supply_raw_material_D
:parameters (?d - itemD ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_D ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))

            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_E
:parameters (?d - itemE ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_E ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_G
:parameters (?d - itemG ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_G ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_I
:parameters (?d - itemI ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_I ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_J
:parameters (?d - itemJ ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_J ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))

            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_N
:parameters (?d - itemN ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_N ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_O
:parameters (?d - itemO ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_O ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_Q
:parameters (?d - itemQ ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_Q ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_R
:parameters (?d - itemR ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_R ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_S
:parameters (?d - itemS ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_S ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))

            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action supply_raw_material_P
:parameters (?d - itemP ?loc1 - supplier)
:control(?batchsize - number)
:duration(= ?duration 0.001)
:condition (and 
                (at start (<= ?batchsize 100))
                (at start (>= ?batchsize 1))
                (at start (available))
                (at start (can_supply_P ?loc1)) 
                (at start (at ?loc1)) 
                (at start (>= (stock ?d) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (stock ?d) ?batchsize))  
)
)

(:durative-action go_to
:parameters (?loc1 ?loc2 - location)
:duration(= ?duration 0.001)
:condition (and 
                (at start (available))
            (at start (at ?loc1)) 
                )
:effect (and       
                (at start (not (available)))
                (at end (available))
            (at start (not (at ?loc1)))
            (at start (at ?loc2))
        ))

(:durative-action deliver_to_customer
:parameters (?loc1 - customer ?a - item)
:duration(= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (at ?loc1))
                (at start (>= (stock ?a) (item-goal ?a) ))
		(at start (not (delivered ?a ?loc1)))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (delivered ?a ?loc1))
                (at start (decrease (stock ?a) (item-goal ?a) ))
                )
)
)
