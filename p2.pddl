;; Block A is on the table, block B on A and there is nothing on B.  A
;; water bucket, a brush, a A blue sprayer and a red paint can are on
;; the table and clear.  The goal is for A to be colored red and B
;; blue and the brush be clean. 

(define (problem 1)
  (:domain hw6)
  (:objects A B bucket brush sprayer can)
  (:init (arm-empty)
         (on-table a) (not (color a red)) (is-block a)
         (not (color b blue)) (on b a) (is-block b) (clear b)
         (on-table sprayer) (is-sprayer sprayer blue) (clear sprayer)
         (on-table can) (is-can can red) 
         (on-table brush) (is-brush brush) (clean brush) (clear brush)
         (on-table bucket) (is-bucket bucket))
  (:goal (and (arm-empty) (color A red) (color B blue) (clean brush)
         (on-table sprayer)  ;to prevent
         (on-table brush)))) ;unnecessary stacking





