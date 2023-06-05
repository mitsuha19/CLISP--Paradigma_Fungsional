;=====================
        ;Selektor
;=====================
(defun akar(P)
    (car (cdr P))
)

(defun left(P)
    (car P)
)

(defun right(P)
    (car (cdr (cdr P)))
)

;=======================
        ;Predikat
;=======================

(defun istreeempty(P)
    (null P)
)

(defun isoneelmt(P)
    (and (not (null P)) (null (left P)) (null (right P)))
)

(defun isunerleft(P)
    (and (not (null P)) (not (null (left P))) (null (right P)))
)

(defun isunerright(P)
    (and (not (null P)) (not (null (right P))) (null (left P)))
)

(defun isbiner(P)
    (and (not (null P)) (not (null (right P))) (not (null (left P))))
)

(defun isexitleft(P)
    (and (not (null P)) (not (null (left P))))
)

(defun isexitright(P)
    (and (not (null P)) (not (null (right P)))) 
)


;=======================
    ;Operator Lanjutan
;=======================

(defun nbElmt(P)
    (cond 
        ((isoneelmt P)
         1)
        (t 
            (cond 
                ((isbiner P)
                    (+ (nbElmt (right P)) (nbElmt (left P)) 1))
                ((isunerleft P) 
                    (+ (nbElmt (left P)) 1))
                ((isunerright P)
                    (+ (nbElmt (right P)) 1))
            )
        )
    )
)

(defun nbdaun(P)
    (cond
        ((isoneelmt P)
        1)
        ((isbiner P)
        (+ (nbdaun (left P)) (nbdaun (right P))))
        ((isunerleft P)
        (nbdaun (left P)))
        ((isunerright P)
        (nbdaun (right P))
        )
    )
)

(defun RepPrefix(P)
    (cond 
        ((isoneelmt P)
        (list (akar P)))
        ((isbiner P)
        (append (list (akar P)) (RepPrefix (left P)) (RepPrefix (right P))))
        ((isunerleft P)
        (append (list (akar P)) (RepPrefix (left P))))
        ((isunerright P)
        (append (list (akar P)) (RepPrefix (right P))))
    )
)

(setq l1(list '( ( (() 5 ()) 4 ()) 1 ()) 3 '(() 2 ())))
(setq l2(list () 1 ()))
(setq l3(list '(() 2 ()) 1 '((() 4 ()) 3 (() 5 (() 6 ())))))