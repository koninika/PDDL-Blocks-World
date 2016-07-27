;; Block A is on the table, B is on A and C on B.  Cans of red, green
;; and blue paint are on the table along with three clean brushes.
;; There is no water bucket.  The goal is to make A red, B green and C
;; blue and to have A on B, B on C and C on the table and the arm
;; empty.

(define (problem 6)
  (:domain hw6)
  (:objects A B C redcan greencan bluecan brush1 brush2 brush3)
  (:init (arm-empty) (on-table a) (not (color a red)) (is-block a)
  		 (on b a) (not (color b blue)) (is-block b)
  		 (on c b) (not (color c green)) (is-block c) (clear c)
  		 (on-table redcan) (is-can redcan red)
         (on-table bluecan) (is-can bluecan blue)
         (on-table greencan) (is-can greencan green)
         (on-table brush1) (is-brush brush1) (clean brush1) (clear brush1) 
         (on-table brush2) (is-brush brush2) (clean brush2) (clear brush2) 
         (on-table brush3) (is-brush brush3) (clean brush3) (clear brush3))
  (:goal (and (arm-empty) (color a red) (color b blue) (color c green) (on b c) (on-table brush1) (on-table brush2) (on-table brush3) (on a b))));


