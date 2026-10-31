---
title: "Conditionals and Predicates"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How do you control how your program executes?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain how to check whether something is true or false

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

```scheme
(define (goldilocks n smallest-ok biggest-ok)
  (cond
    ((< n smallest-ok)
     "Too small")
    ((> n biggest-ok)
     "Too big")
    (else
      "Just right!")))
```

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 1: Can you do it?

Can you think of a sequence of inputs for which the above program would work,
but which do not reflect the intention of the programmer?  If so, how might
these be fixed?

:::::::::::::::::::::::: solution


## Answer

There is no check that the smallest value is less than or equal to the
biggest value.  One can check this, and possibly also check that the inputs
are numbers.

```scheme
(define (goldilocks n smallest-ok biggest-ok)
  (cond
    ((> smallest-ok biggest-ok)
     "Input error:\n  The smallest desired value is bigger than the biggest desired value")
    ((< n smallest-ok)
     "Too small")
    ((> n biggest-ok)
     "Too big")
    (else
      "Just right!")))
```

:::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::


```scheme
(define a-list (list 1 2 3))
(define b-list (list 1 2 3))
(equal? a-list a-list)
```

```scheme
(eq? a-list a-list)
```

```scheme
(eq? a-list b-list)
```

```scheme
(equal? a-list b-list)
```

```scheme
(member 'b '(a b c))
```

```scheme
(member 'z '(a b c))
```

```scheme
(define (fruit-sleuth fruit-basket)
  (cond
   ((member fruit-basket)
    "Found the fruit you are looking for!")
   (else
     "Fruit not found. Gadzooks!"))
```

```scheme
(define (fruit-basket '(apple banana lemon))
(fruit-sleuth 'banana fruit-basket)
```

```scheme
(fruit-sleuth 'orange fruit-basket)
```

::::::::::::::::::::::::::::::::::::: keypoints 

- Program flow can be controlled by evaluating statements and checking conditions

::::::::::::::::::::::::::::::::::::::::::::::::

