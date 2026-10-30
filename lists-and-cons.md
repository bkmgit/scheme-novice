---
title: "Lists and 'cons'"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How can I extract the first item from a list?
- How can I use lists as data?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Be able to construct lists
- Be able to use lists in programs

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

```scheme
(list 1 2 "cat" 22.9 'foo)
```

```scheme
'(1 2 "cat" 22.9 foo)
```

```scheme
'(foo 'bar '''baz)
```

```scheme
'()
```

```scheme
(cons 'a '())
```

```scheme
(cons 'a (cons 'b (cons 'c '())))
```

```scheme
(list 'a 'b 'c)
```

```scheme
'(a b c)
```

```scheme
(car '(a b c))
```

```scheme
(cdr '(a b c))
```

```scheme
(car (cdr '(a b c)))
```

```scheme
(cons 'a 'b)
```

```scheme
(cons 'a (cons 'b '()))
```

```scheme
(+ 1 4 (- 8 3))
```

```scheme
'(+ 1 4 (- 8 3))
```

```scheme
(let ((name "Obong"))
 (string-append "Hello " name "!"))
```

```scheme
'(let ((name "Obong"))
  (string-append "Hello " name "!"))
```

```scheme
'foo
```

```scheme
(quote foo)
```

```scheme
'(lambda (x) (* x 2))
```

```scheme
(quote (lambda (x) (* x 2)))
```

```scheme
(define animal-noises
  '((cat . meow)
    (dog . woof)
    (sheep . baa)))
```

```scheme
(assoc 'cat animal-noises)
```

```scheme
(assoc 'cow animal-noises)
```

```scheme
(define (cat-years years)
 (cond
  ((<= years 1)
   (* years 15))
  ((<= years 2)
   (+ 15 (* 9 (- years 1))))
  (else
   (+ 24 (* 4 (- years 2))))))
```

```scheme
(define (cat-entry name age)
  `(cat (name ,name)
        (age ,age)
        (cat-years-age ,(cat-years age))))
```

```scheme
(cat-entry "Rose" 16)
```

```scheme
(cat-entry "Hightower" 22)
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

- Lists are a fundamental part of scheme programming
- Quotes can be used to create a list
- Quasiquotes and commas can be used to convert from data to code

::::::::::::::::::::::::::::::::::::::::::::::::

