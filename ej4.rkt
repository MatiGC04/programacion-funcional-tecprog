;Obtenga el elemento x de las siguientes listas:
'( a b c . x)
(cdr (cdr (cdr '(a b c . x))))
'(a b c x)
(cdr(cdr(cdr(cdr((a b c x))))))

'((a . x) b)
(cdr(car(((a . x) b))))

'(x . a)
car((x . a))

'(a . x)
cdr((a . x))
