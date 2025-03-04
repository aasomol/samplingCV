(define (domain counters)
    
    (:types counter)

    (:functions
        (value ?c - counter)
        (max_int)
        (delta)
        (lower_bound)
        (upper_bound)
    )


    ;; Increment the value in the given counter 
    (:action increment
         :parameters (?c - counter)
         :precondition (and (<= (+ (value ?c) 1) (max_int)))
         :effect (and (increase (value ?c) 1))
    )

    ;; Decrement the value in the given counter
    (:action decrement
         :parameters (?c - counter)
         :precondition (and (>= (value ?c) 1))
         :effect (and (decrease (value ?c) 1))
    )
)
