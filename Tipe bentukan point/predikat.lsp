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

(defun isorigin(p)
   (and (=(absis p)0) 
    (=(ordinat p)0)
   )
)