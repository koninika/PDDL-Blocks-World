;; three blocks (A B and C) are on the table along with three sprayers
;; (red, green, blue), three paint cans (red, green, blue), a water
;; bucket and a clean brush.  Paint A, B and C red, blue and green,
;; respectively. End with the arm empty and the brush clean.

(define (problem 3)
  (:domain hw6)
  (:objects A B C brush bucket redcan greencan bluecan redsprayer greensprayer bluesprayer)
  (:init (arm-empty) (on-table a) (not (color a red)) (is-block a)
  		 (on-table b) (not (color b blue)) (is-block b)
  		 (on-table c) (not (color c green)) (is-block c)
  		 (on-table redsprayer) (is-sprayer redsprayer red) (clear redsprayer)
  		 (on-table bluesprayer) (is-sprayer bluesprayer blue) (clear bluesprayer)
  		 (on-table greensprayer) (is-sprayer greensprayer green) (clear greensprayer)
         (on-table redcan) (is-can redcan red)
         (on-table bluecan) (is-can bluecan blue)
         (on-table greencan) (is-can greencan green)
         (on-table brush) (is-brush brush) (clean brush) (clear brush)
         (on-table bucket) (is-bucket bucket))
  (:goal (and (arm-empty) (color a red) (color b blue) (on-table brush) (color c green) (clean brush))))

