(defun grade(x)
    (if (>= x 80)
        'A
        (if (and (>= x 72) (< x 80 ))
            'AB
            (if (and (>=  x 65) (< x 72 ))
                'B
                (if (and (>= x 57) (< x 65))
                    'BC
                    (if (and (>= x 50) (< x 57))
                        'C
                        (if (and (>= x 35) (< x 50))
                            'D
                            (if (< x 35)
                                'E
                            )
                        )
                    )
                )
            )
        )
    )

)