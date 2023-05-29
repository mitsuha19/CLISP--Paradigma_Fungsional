(defun max4( v x y z)
    (if (and (> v x) (> v y) (> v z))
        v
        (if (and (> x v) (> x y) (> x z))
            x
            (if (and (> y x) (> y v) (> y z))
                y
                (if (and (> z x) (> z y) (> z v))
                    z
                )
            )
        )
    )

)