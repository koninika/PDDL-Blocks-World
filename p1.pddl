;; There is only one block, A, which is on the table.  A can with
;; red paint is on the table.  There is a clean brush on the
;; table.  Our goal is to have A be red and the arm empty.

(define (problem 1)
  (:domain hw6)
  (:objects A brush can)
  (:init (arm-empty) (on-table a) (not (color a red)) (is-block a)      ;block a init
  		 (on-table brush) (is-brush brush) (clean brush) (clear brush)  ;brush init
  		 (on-table can) (is-can can red))								;red can init
  (:goal (and (arm-empty) (color A Red))))
