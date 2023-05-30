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

(defun isOnSbY(p)
    (= (absis p)0)
)