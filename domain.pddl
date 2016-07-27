;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;			  Paint Blocks			   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain hw6)
  (:requirements :strips)
  (:constants red blue green)
  (:predicates (on-table ?x)
	       (color ?x ?y)
	       (arm-empty)
	       (holding ?x)
	       (dip ?x ?y ?z)
	       (is-can ?x ?y)
	       (is-block ?x)
	       (is-brush ?x)
	       (is-sprayer ?x ?y)
	       (is-bucket ?x)
	       (clean ?x)
	       (on ?x ?y))

  (:action pick-up
	     :parameters (?object)
	     :precondition (and (clear ?object) (on-table ?object) (arm-empty))
	     :effect
	     (and (not (on-table ?object))
		   (not (clear ?object))
		   (not (arm-empty))
		   (holding ?object)))
		   
  (:action put-down
	     :parameters (?object)
	     :precondition (holding ?object)
	     :effect
	     (and (not (holding ?object))
		   (clear ?object)
		   (arm-empty)
		   (on-table ?object)))
		   
  (:action stack
	     :parameters (?object ?object2)
	     :precondition (and (holding ?object) (clear ?object2))
	     :effect
	     (and (not (holding ?object))
		   (not (clear ?object2))
		   (clear ?object)
		   (arm-empty)
		   (on ?object ?object2)))
		   
  (:action unstack
	     :parameters (?object ?object2)
	     :precondition (and (on ?object ?object2) (clear ?object) (arm-empty))
	     :effect
	     (and (holding ?object)
		   (clear ?object2)
		   (not (clear ?object))
		   (not (arm-empty))
		   (not (on ?object ?object2))))
		   
  (:action dip-paint
	     :parameters (?brush ?can ?paintcolor)
	     :precondition (and (holding ?brush) (is-brush ?brush) (clean ?brush) (on-table ?can) (is-can ?can ?paintcolor))
	     :effect
	     (and (not (clean ?brush)) (color ?brush ?paintcolor)))
	     
  (:action dip-bucket 
	     :parameters (?brush ?bucket)
	     :precondition (and (holding ?brush) (is-brush ?brush) (on-table ?bucket) (is-bucket ?bucket))
	     :effect
	     (clean ?brush))
	     
  (:action brush-paint
	     :parameters (?brush ?a ?paintcolor)
	     :precondition (and (holding ?brush) (color ?brush ?paintcolor) (on-table ?a) (is-block ?a) (not (color ?a ?paintcolor)))
	     :effect
	     (color ?a ?paintcolor))
	     
  (:action spray-paint
	     :parameters (?sprayer ?a ?paintcolor)
	     :precondition (and (holding ?sprayer) (is-sprayer ?sprayer ?paintcolor) (on-table ?a) (is-block ?a) (not (color ?a ?paintcolor)))
	     :effect
	     (color ?a ?paintcolor)))     

