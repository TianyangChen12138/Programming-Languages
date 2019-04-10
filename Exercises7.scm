; reverses a list of integers
(define (reverse1 l)
  (define (reverse2 l ls)
    (if (null? l)
      ls
      (reverse2 (cdr l) (cons (car l) ls))))
  (reverse2 l '()))