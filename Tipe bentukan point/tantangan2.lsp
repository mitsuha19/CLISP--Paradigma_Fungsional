;membuat Type point
(defun makepoint (x y)
    (cons x(cons y nil))
)

(defun absis (p)
    (car p)
)

(defun ordinat (p)
    (car (cdr p))
)

(defun isEqual(p1 p2)
    (and (= (absis p1) (absis p2)) (= (ordinat p1) (ordinat p2)))
)