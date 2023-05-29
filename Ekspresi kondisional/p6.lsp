(defun wujudZatAir(x)
    (cond 
        ((< x 0) 'PADAT)
        ((< x 100) 'CAIR)
        (t 'GAS)
    )

)