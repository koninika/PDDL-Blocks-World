;; Problem 5: Block A is on the table, B is on A and C on B.  A red
;; sprayer is on the table.  A green paint can is on the sprayer and a
;; blue paint can on the green paint can and a water bucket on the
;; blue can.  A clean brush is on the water bucket.  The goal is to
;; make A red, B green and C blue and to have A on B, B on C and C on
;; the table. The brush should be clean and on top of the paint can
;; with green paint.

(define (problem 5)
  (:domain hw6)
  (:objects A B C redsprayer greencan bluecan bucket brush)
  (:init (arm-empty)
         (on-table a) (not (color a red)) (is-block a)
         (not (color b green)) (on b a) (is-block b) 
         (not (color c blue)) (on c b) (is-block c) (clear c)
         (on-table redsprayer) (is-sprayer redsprayer red)
         (on greencan redsprayer) (is-can greencan green)
         (on bluecan greencan) (is-can bluecan blue)
         (on bucket bluecan) (is-bucket bucket)
         (on brush bucket) (is-brush brush) (clean brush) (clear brush))
  (:goal (and (arm-empty) (on-table c) (color C blue) (color A red) (color B green) (on b c) (on a b) (on-table redsprayer) (on brush greencan) (clean brush))))
