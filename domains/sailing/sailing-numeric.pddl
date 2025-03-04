(define (domain sailing)
    (:types boat person )
    
    (:predicates 
        (saved ?t - person)
    )
    
    (:functions
        (x ?b - boat)
        (y ?b - boat)
        (d ?t - person)
        (min_x)
        (min_y)
        (max_x)
        (max_y)
        (delta)
        (lower_bound)
        (upper_bound)
    )

    (:action go_north_east
         :parameters (?b - boat)
         :precondition (and (<= (+ (x ?b) (* 1 1.5)) (max_x) ) (<= (+ (y ?b) (* 1 1.5)) (max_y) ) )
         :effect (and(increase (x ?b) (* 1 1.5)) (increase (y ?b) (* 1 1.5)))
    )
    (:action go_north_west
         :parameters (?b - boat)
         :precondition (and (>= (- (x ?b) (* 1 1.5)) (min_x) ) (<= (+ (y ?b) (* 1 1.5)) (max_y) ) )
         :effect (and(decrease (x ?b) (* 1 1.5)) (increase (y ?b) (* 1 1.5)))
    )
    (:action go_est
         :parameters (?b - boat)
         :precondition (and (<= (+ (x ?b) (* 1 3)) (max_x)) )
         :effect (and(increase (x ?b) (* 1 3)))
    )
    (:action go_west
         :parameters (?b - boat)
         :precondition (and (>= (- (x ?b) (* 1 3)) (min_x) ) )
         :effect (and(decrease (x ?b) (* 1 3)))
    )
    (:action go_south_west
         :parameters(?b - boat)
         :precondition (and (<= (+ (x ?b) (* 1 2)) (max_x) ) (>= (- (y ?b) (* 1 2)) (min_y) ) )
         :effect (and(increase (x ?b) (* 1 2)) (decrease (y ?b) (* 1 2)))
    )
    (:action go_south_east
         :parameters(?b - boat)
         :precondition (and (>= (- (x ?b) (* 1 2)) (min_x) ) (>= (- (y ?b) (* 1 2)) (min_y) ) )
         :effect (and(decrease (x ?b) (* 1 2)) (decrease (y ?b) (* 1 2)))
    )
    (:action go_south
         :parameters(?b - boat)
         :precondition (and (>= (- (y ?b) (* 1 2)) (min_y) ) )
         :effect (and (decrease (y ?b) (* 1 2)))
    )
    (:action save_person
        :parameters(?b - boat ?t - person)
        :precondition ( and  (>= (+ (x ?b) (y ?b)) (d ?t)) 
                             (>= (- (y ?b) (x ?b)) (d ?t)) 
                             (<= (+ (x ?b) (y ?b)) (+ (d ?t) 5)) 
                             (<= (- (y ?b) (x ?b)) (+ (d ?t) 5))
                      )
        :effect (and(saved ?t))
    )

)
