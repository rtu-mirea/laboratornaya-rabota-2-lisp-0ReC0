(defconstant Li (list (list 5 6 7) 6 (list 2 3 4) (car (list 1 2 3)) (list 1 3 1 4)))

(defun insert 
    (X N LST)   
    (cond 
        (
            (NULL LST) 
            (cons X LST))      
        (
            (eq N 1) 
            (cons X LST))      
        (T 
            (cons 
                (car LST)            
                (insert X 
                    (- N 1)               
                    (CDR LST)            
                )         
            )      
        )   
    )
)
(defun del (N LST)   
    (COND ((EQ N 1) (CDR LST))      
        (T (CONS (CAR LST)            
            (DEL (- N 1) (CDR LST))
            )
        )
    )
)
(defun search (N list)
   (cond ((eq list nil) "НЕ НАЙДЕН!")
        ((eq (car list) N) "НАЙДЕН!")
        (t (search N (cdr list)))   
    )
)

(insert 5 1 Li)

(del 6 Li)

(search 213 Li)

(search 6 Li)
