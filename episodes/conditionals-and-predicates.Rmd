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


``scheme
(define (a-list (list 1 2 3)))
(define (b-list (list 1 2 3)))
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

``scheme
(define (fruit-basket '(apple banana lemon))
(fruit-sleuth 'banana fruit-basket)
```

```scheme
(fruit-sleuth 'orange fruit-basket)
```

::::::::::::::::::::::::::::::::::::: keypoints 

- Program flow can be controlled by evaluating statements and checking conditions

::::::::::::::::::::::::::::::::::::::::::::::::

