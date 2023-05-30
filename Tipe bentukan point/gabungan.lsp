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
;spesifikasi Predikat
(defun isorigin(p)
   (and (=(absis p)0) 
    (=(ordinat p)0)
   )
)

(defun kuadran(p)
    (cond 
        ((and (> (absis p) 0) (> (ordinat p) 0))1)
        ((and (< (absis p) 0) (> (ordinat p) 0))2)
        ((and (< (absis p) 0) (< (ordinat p) 0))3)
        ((and (> (absis p) 0) (< (ordinat p) 0))4)
        (t 'lainnya)
    )
)
;tantangan 1
(defun isOnSbY(p)
    (= (absis p)0)
)
;tantangan 2
(defun isEqual(p1 p2)
    (and (= (absis p1) (absis p2)) (= (ordinat p1) (ordinat p2)))
)
;tantangan 3
(defun translasiSbY (p n)
   (setq absis(absis p))
   (setq ordinat(+(ordinat p) n ))

   (list absis ordinat)
)
;tantangan 4
(defun jarak(p1 p2)
    (sqrt (+ 
           (* (- (absis p1) (absis p2)) (- (absis p1) (absis p2))) 
           (* (- (ordinat p1) (ordinat p2)) (- (ordinat p1) (ordinat p2)))))
)