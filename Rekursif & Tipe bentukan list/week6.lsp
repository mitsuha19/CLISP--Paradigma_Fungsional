;Ekspresi Rekursif
(defun pangkat (a n)
    (cond 
        ((= n 0) 1)
        ((/= n 0) 
        (* a (pangkat a (- n 1))))
    )
)

(defun faktorial(n)
    (cond 
        ((= n 0) 1)
        ((> n 0)
        (* n (faktorial (- n 1))))
    )
)

(defun fibbonaci (a b n)
    (cond
        ((= n 0) 0)
        ((= n 1) a)
        ((= n 2) b)
        ((> n 2)
        (+ (fibbonaci a b (- n 1)) (fibbonaci a b (- n 2))))
    )   
)

; Tipe list

; konstruktor
(defun konso(e L)
    (cons e L)
)

(defun Konsb (L e)
    (reverse (cons e (reverse L)))
)

;selektor
(defun FirstElmt(L)
    (car L)
)

(defun tail(L)
    (cdr L)
)

(defun LastElmt(L)
    (car (reverse L))
)

(defun head(L)
    (reverse (cdr (reverse L )))
)

(defun mid (L)
    (setq tengah (length L))
    (cond ((oddP tengah) (list (nth (floor tengah 2) L)))
          (t (list (nth (1- (floor tengah 2)) L) (nth (floor tengah 2)L))
          )
    )
)

; Operator
(defun NbElmt (L)
  (cond ((NULL L) 0) 
	(t (+ 1 (NbElmt (Tail L))))
  )
)

(defun kongkat (L1 L2)
    (append L1 L2)
)

(defun reverseL(L)
    (reverse L)
)

(defun max2 (a b)
    (if (> a b)
        a
        b
    )
)

(defun maxL(L)
    (cond 
        ((null L) 0)
        ((>= (length L) 1)
            (max2 (car L) (maxL (cdr L)))
        )
    )
)

(defun elmtKeN (L N)
    (nth N L)
)

(defun copy (L1 L2)
    (append L1 L2)
)

(defun sum (L)
    (cond   
    ((null L) 0)
    ((>= (length L) 1)
    (+ (car L) (sum (cdr L))))
    )
)

(defun average (L)
    (/ (sum L) (length L))
)

(defun stdv (L)
    (let ((mean (average L))
        (sum 0)
        (count 0))
        (dolist (x L)
        (when (numberp x)
            (incf sum (* (- x mean) (- x mean)))
            (incf count)))
        (if (zerop count)
            0
            (sqrt (/ sum count)))
    )
)

;Predikat
(defun isEmpty (L)
    (null L)
)

(defun IsOneElmt (L) 
	(and (not (IsEmpty L)) (IsEmpty (cdr L)))
)

(defun isEqual (L1 L2)
    (equal L1 L2)
)

(defun isMember (L X)
  (cond ((null L) nil)
        ((equal (car L) X) t)
        (t (isMember (cdr L) X)))
)

(defun isFirst (L X)
    (= (firstElmt L) X)
)

(defun isLast (L X)
    (= X (lastElmt L))
)

(defun isNbElemt (L1 L2)
    (= (NbElmt L1) (NbElmt L2))
)

(defun isReverse (L1 L2)
    (equal (reverse L1) L2)
)

(defun isXElmtKeN (L X N)
(= (nth N L) X))