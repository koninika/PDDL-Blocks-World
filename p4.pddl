;; Block A is on the table, B is on A and C on B.  On the table are a
;; watr bucket, a red sprayer, cans of blue and green paint and a
;; clean brush.  The goal is to make A red, B green and C blue and to
;; have A on B, B on C and C on the table and the brush clean and arm
;; empty.

(define (problem 4)
  (:domain hw6)
  (:objects a b c brush bucket redsprayer bluecan greencan)
  (:init (arm-empty)(on-table a) (not (color a red)) (is-block a)
  		 (on b a) (not (color b blue)) (is-block b)
  		 (on c b) (not (color c green)) (is-block c) (clear c)
  		 (on-table redsprayer) (is-sprayer redsprayer red) (clear redsprayer)
         (on-table bluecan) (is-can bluecan blue) 
         (on-table greencan) (is-can greencan green)
         (on-table brush) (is-brush brush) (clean brush) (clear brush)
         (on-table bucket) (is-bucket bucket))
  (:goal (and (arm-empty) (color a red) (color b blue) (color c green) (on b c) (on a b) (on-table c) (on-table redsprayer) (on-table brush) (clean brush))));


