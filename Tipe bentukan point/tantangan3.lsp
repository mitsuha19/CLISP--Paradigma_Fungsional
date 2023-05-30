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

(defun translasiSbY (p n)
   (setq absis(absis p))
   (setq ordinat(+(ordinat p) n ))

   (list absis ordinat)
)