---
title: "Closures"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How can we define procedures with some pre-specified input arguments?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Avoid repetitive procedure argument entry

::::::::::::::::::::::::::::::::::::::::::::::::


```scheme
(define (make-goldilocks smallest-ok biggest-ok)
 (define (goldilocks n)
  (cond
   ((< n smallest-ok)
    "Too small!")
   ((> n biggest-ok)
    "Too big!")
    (else
     "Just right!")))
    goldilocks)
```

```scheme
(make-goldilocks 10 30)
```

```scheme
(define goldi
 (make-goldilocks 10 30))
```

```scheme
(goldi 7)
```

```scheme
(goldi 256)
```

```scheme
(goldi 22)
```


```scheme
(define (abstract-cons car-data cdr-data)
 (lambda (method)
  (cond
   ((eq? method 'car)
    car-data)
   ((eq? method 'cdr)
    (cdr-data)
   (else (error "Unknown method:" method)))))
```

```scheme
(define our-cons (abstract-cons 'foo 'bar))
```

```scheme
(our-cons 'car)
```

```scheme
(our-cons 'cdr)
```

::::::::::::::::::::::::::::::::::::: challenge 

## Challenge 1: Can you do it?

What is the output of this command?

```scheme
(display "Hello World!\n")
```

:::::::::::::::::::::::: solution 

## Output
 
```output
Hello World!
```

:::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::: keypoints 

- Scheme allows for easy extension and modification of function behavior

::::::::::::::::::::::::::::::::::::::::::::::::

