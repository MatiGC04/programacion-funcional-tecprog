;Describa los pasos necesarios para evaluar la siguiente expresión:
#long racket
((car (cdr (cdr (list + - * /)))) 5 5)
;( + - * /)
;( - * /)
;( * /)
;( * ) 5 5 -> 5*5
