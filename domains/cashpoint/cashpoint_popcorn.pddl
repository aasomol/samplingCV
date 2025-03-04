
(define (domain cashpoint)
(:requirements :typing :fluents :continuous)

(:types location
        currency
        item)


(:predicates    
    (at ?a - location)
    (canwithdraw ?b - location)
    (canbuy ?a - location ?i - item)
    (bought ?i - item)
    (have_enough ?z - currency)
    (currencyOf ?i - item ?c - currency)
    (available)
)
(:functions     
    (inpocket ?z - currency)
    (currency_goal ?z1 - currency)
    (price ?i - item)
    (balance ?z - currency)
)

(:durative-action buy_with_cash
:parameters (?i - item ?a - location ?z - currency)
:duration (= ?duration 0.001)
:condition (and     
                (at start (available))
                (at start (at ?a))
                (at start (canbuy ?a ?i)) 
                (at start (>= (inpocket ?z) (price ?i) ))
                (at start (currencyOf ?i ?z))
                (at start (not (bought ?i)))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (decrease (inpocket ?z) (price ?i) ))
                (at start (bought ?i)) 
        ))

(:durative-action withdraw
:parameters (?b - location ?z1 - currency)
:control(?cash - number)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (at ?b)) 
                (at start (>= (inpocket ?z1) 0))
                (at start (canwithdraw ?b))
                (at start (>= (- (balance ?z1) ?cash) 0))
            )
:effect (and    
                (at start (not (available)))
                (at end (available))
                (at start (increase (inpocket ?z1) ?cash))
                (at start (decrease (balance ?z1) ?cash))
        ))

(:durative-action goto
:parameters (?a ?b - location)
:duration (= ?duration 0.001)
:condition (and 
                (at start (available))
                (at start (at ?a))
            ) 
:effect (and     
                (at start (not (available)))
                (at end (available))
                (at start (not (at ?a)))
                (at start (at ?b))
        ))

(:durative-action save_for_later
:parameters (?z - currency)
:duration (= ?duration 0.001)
:condition (and  
                (at start (available))
                (at start (>= (inpocket ?z) (currency_goal ?z) )) 
                (at start (not (have_enough ?z)))
            )
:effect (and     
                (at start (not (available)))
                (at end (available))
                (at start (have_enough ?z))
                (at start (decrease (inpocket ?z) (currency_goal ?z) ))
))
)
