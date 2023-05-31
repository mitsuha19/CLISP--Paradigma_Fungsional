(defun makeP(a b)
    (cons a(cons b nil))
)

(defun pemb (p)
    (car p)
)

(defun peny (p)
    (car (cdr p))
)

(defun addP (p1 p2)
    (makeP (+ (* (pemb p1) (peny p2)) 
           (* (pemb p2) (peny p1) ) )
           (* (peny p1) (peny p2)))    
)

(defun subP (p1 p2)
    (makeP (- (* (pemb p1) (peny p2)) 
            (* (pemb p2) (peny p1) )) 
            (* (peny p1) (peny p2)))
)

(defun mulp (p1 p2)
    (makeP (* (pemb p1) (pemb p2)) (* (peny p1) (peny p2)))
)

(defun divp(p1 p2) 
    (makeP (* (pemb p1) (peny p2)) (* (peny p1) (pemb p2)))
)

(defun isEqp (p1 p2)
    (= (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)) )
)

(defun isLtp (p1 p2)
  (< (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)) )
)   