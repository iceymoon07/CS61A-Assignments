(define (over-or-under num1 num2) (if (< num1 num2) -1 (if (= num1 num2) 0 (if (> num1 num2) 1))))

(define (make-adder num) (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) (if (> n 1)
    (composed f (repeat f (- n 1)))
    f))

(define (max a b)
  (if (> a b)
    a
    b))

(define (min a b)
  (if (> a b)
    b
    a))

(define (gcd a b)
  (define bigger (max a b))
  (define smaller (min a b))
  (define remainder (modulo bigger smaller))
  (if (zero? remainder)
    smaller
    (gcd smaller remainder)))
