(defun max2(a b)
    (if (> a b)
    a 
    b
    )
)

(defun max4(w x y z)
    (max2 (max2 w x) (max2 y z))
)