;Konstruktor
(defun makedate (x y z)
(cons x (cons y (cons z nil )))
)


;Selektor
(defun day (p)
(car p)
)


(defun month (p)
(car (cdr p))
)


(defun year (p)
(car (cdr (cdr p)))
)

;Operator 

(defun nextDay (d)
    (cond
        ((and (= (day D) 31) (or (= (month d) 1)
                          (= (month d) 3)
                          (= (month d) 5)
                          (= (month d) 7)
                          (= (month d) 8)
                          (= (month d) 10)))
         (makedate 1 (+ (month d) 1) (year d)))
         
   
        ((and (= (day D) 30) (or (= (month d) 4)
                          (= (month d) 6)
                          (= (month d) 9)
                          (= (month d) 11)))  
         (makedate 1 (+ (month d) 1) (year d)))

        ((and (= (day D) 29) (= (month D) 2) 
            (or (= (mod (year d) 400) 0) (and (= (mod  (year d) 4) 0) (not (= (mod (year d ) 100) 0)))))
            (makedate 1 (+ (month d) 1) (year D)))

        ((and (= (day D) 28) (= (month D) 2) 
            (or (= (mod (year d) 400) 0) (and (= (mod  (year d) 4) 0) (not (= (mod (year d ) 100) 0)))))
            (makedate 29 (+ (month d) 1) (year D)))

        ((and (= (day D) 28) (= (month D) 2)
            (or (/= (mod (year d) 400) 0) (and (/= (mod  (year d) 4) 0) (not (/= (mod (year d ) 100) 0)))))
            (makedate 1 (+ (month d) 1) (year D)))

        ((and (= (day D) 31) (= (month D) 12) 
           (makedate 1 1 (+ (year d) 1))))

        (t (makedate (+ (day d) 1) (month d) (year d)))                     
    )
)

    
(defun yesterday (d)
  (cond
        ((and (= (day D) 1) (or (= (month d) 5)
                                (= (month d) 7)
                                (= (month d) 8)
                                (= (month d) 10)
                                (= (month d) 12)))
         (makedate 30 (- (month d) 1) (year d)))
         
   
        ((and (= (day D) 1) (or (= (month d) 4)
                                (= (month d) 6)
                                (= (month d) 9)
                                (= (month d) 11)
                                (=(month d) 2)))  
         (makedate 31 (- (month d) 1) (year d)))

        ((and (= (day D) 1) (= (month D) 3) 
            (or (= (mod (year d) 400) 0) (and (= (mod  (year d) 4) 0) (not (= (mod (year d ) 100) 0)))))
            (makedate 29 (- (month d) 1) (year D)))

        ((and (= (day D) 1) (= (month D) 3)
            (or (/= (mod (year d) 400) 0) (and (/= (mod  (year d) 4) 0) (not (/= (mod (year d ) 100) 0)))))
            (makedate 28 (- (month d) 1) (year D)))

        ((and (= (day D) 1) (= (month D) 1) 
           (makedate 31 12 (- (year d) 1))))

        (t (makedate (- (day d) 1) (month d) (year d)))                     
    )  

)

;Predikat
(defun isEqD (p1 p2)
    (and (= (day p1) (day p2)) (= (month p1) (month p2)) (= (year p1) (year p2)) )
)

(defun isBefore (p1 p2)
    (or 
        (< (year p1) (year p2) ) 
        (and (< (month p1) (month p2)) (<= (year p1) (year p2)) ) 
        (and (< (day p1) (day p2)) (<= (month p1) (month p2)) (<= (year p1) (year p2)))
    )
)

(setq d1(makedate 19 04 2005))
(setq d2(makedate 30 04 2005))
(setq d3(makedate 10 07 2005))
(setq d4(makedate 19 01 2009))
(setq d5(makedate 30 04 2001))
(setq d6(makedate 17 08 1945))




