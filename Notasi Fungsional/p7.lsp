(defun  detiktolistjam(a)

   (setq jam (floor(/ a 3600) )) 
   (setq menit (floor(/ ( - a ( * 3600 jam) )60))) 
   (setq detik ( - a (* 3600 jam) (* 60 menit))) 

    (list jam menit detik)
)