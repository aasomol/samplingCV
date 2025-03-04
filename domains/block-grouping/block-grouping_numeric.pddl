(define (domain block-grouping)
    (:requirements :typing :fluents)
    (:types block - object)

    
    (:functions
        (x ?b - block)  
        (y ?b - block)  
        (max_x)
        (min_x)
        (max_y)
        (min_y)
        (delta)
        (lower_bound)
        (upper_bound)
    )

    ;; Move a block from its location to an adjacent location
    (:action move_block_up
     :parameters (?b - block)
     :precondition (and (<= (+ (y ?b) 1) (max_y) ))
     :effect (and
        (increase (y ?b) 1)
    ))

    (:action move_block_down
     :parameters (?b - block)
     :precondition (and (>= (- (y ?b) 1) (min_y) ))
     :effect (and
        (decrease (y ?b) 1)
    ))

    (:action move_block_right
     :parameters (?b - block)
     :precondition (and (<= (+ (x ?b) 1) (max_x) ))
     :effect (and
        (increase (x ?b) 1)
    ))

    (:action move_block_left
     :parameters (?b - block)
     :precondition (and (>= (- (x ?b) 1) (min_x) ))
     :effect (and
        (decrease (x ?b) 1)
    ))

)
