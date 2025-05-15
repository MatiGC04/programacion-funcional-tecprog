#lang racket

; -----------------------------------------------------------
; Explicación de los operadores básicos en Racket/Lisp:
;
; cons: Construye un par (par ordenado) a partir de dos elementos.
;       Ejemplo: (cons 1 2) => '(1 . 2)
;       Si el segundo elemento es una lista, se "agrega" al principio:
;       (cons 1 '(2 3)) => '(1 2 3)
;
; list: Crea una lista con los elementos dados.
;       Ejemplo: (list 1 2 3) => '(1 2 3)
;
; quote: Evita que se evalúe una expresión, devolviéndola tal cual.
;        Se puede escribir como (quote algo) o usando el apóstrofe: 'algo
;        Ejemplo: (quote (+ 2 3)) => '(+ 2 3)
;
; car: Devuelve el primer elemento de una lista o par.
;      Ejemplo: (car '(1 2 3)) => 1
;
; cdr: Devuelve la "cola" de una lista, es decir, todo menos el primer elemento.
;      Ejemplo: (cdr '(1 2 3)) => '(2 3)
;
; Tipos básicos de listas en Lisp/Racket:
;   1. Lista propiamente dicha (proper list): termina en '()
;        Ejemplo: '(a b c)  ; es equivalente a (cons 'a (cons 'b (cons 'c '())))
;   2. Lista impropia (improper list) o par (dotted pair): no termina en '(), sino en otro elemento/símbolo
;        Ejemplo: '(a . b)  ; es equivalente a (cons 'a 'b)
; -----------------------------------------------------------

; Ahora vamos línea por línea:

(cons 'car '+)
; cons une 'car y '+ en un par: => '(car . +)

(list 'esto '(es muy fácil))
; list crea una lista con dos elementos: el símbolo 'esto y la lista '(es muy fácil)
; => '(esto (es muy fácil))

(cons 'pero '(se está complicando...))
; cons agrega 'pero al principio de la lista '(se está complicando...)
; => '(pero se está complicando...)

(cons '(y ahora no se que ) 'hizo)
; cons une la lista '(y ahora no se que) y el símbolo 'hizo en un par
; => '((y ahora no se que) . hizo)

(quote (+ 7 2))
; quote evita que se evalúe la suma, devuelve la lista '(+ 7 2)
; => '(+ 7 2)

(cons '+ '(10 3))
; cons agrega el símbolo '+ al principio de la lista '(10 3)
; => '(+ 10 3)

(car '(+ 10 3))
; car devuelve el primer elemento de la lista, que es '+ 
; => '+

(cdr '(+ 10 3))
; cdr devuelve la cola de la lista, es decir '(10 3)
; => '(10 3)

cons
; Esto solo muestra el valor del símbolo cons, que es la función cons en sí.
; => #<procedure:cons>

(quote (cons (car (cdr (7 4)))))
; quote evita que se evalúe todo, devuelve la lista tal cual:
; => '(cons (car (cdr (7 4))))

(quote cons)
; quote devuelve el símbolo cons tal cual:
; => 'cons

(car (quote (quote cons)))
; (quote (quote cons)) es la lista: '(quote cons)
; car devuelve el primer elemento: 'quote
; => 'quote

(+ 2 3)
; Suma 2 y 3
; => 5

(+ '2 '3)
; Los números pueden estar entre comillas, igual se suman (en Racket los símbolos '2 y '3 no son números, pero en este contexto, si son números, suma)
; => 5

(+ (car '(2 3)) (car (cdr '(2 3))))
; (car '(2 3)) => 2
; (cdr '(2 3)) => '(3)
; (car '(3)) => 3
; (+ 2 3) => 5

((car (list + - * /)) 2 3)
; (list + - * /) => lista de funciones: '(+ - * /)
; (car ...) => + (la función suma)
; Entonces, (+ 2 3) => 5