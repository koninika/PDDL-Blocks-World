;; There is only one block, A, which is on the table.  A sprayer with
;; red paint is on the table.  Our goal is to have A be red and the
;; arm empty.

(define (problem 0)
  (:domain hw6)
  (:objects A sprayer)
  (:init (arm-empty) (on-table a) (is-block a) (not (color a red)) (clear sprayer) (on-table sprayer) (is-sprayer sprayer red))
  (:goal (and (arm-empty) (color A red))))

