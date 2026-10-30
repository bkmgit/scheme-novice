---
title: "Methods"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How can we define custom extensible datatypes?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Learn how to extend scheme datatypes

::::::::::::::::::::::::::::::::::::::::::::::::


```scheme
(define-structure enemy name hp)
```

```scheme
(define (dead? e)
(<= (enemy-hp e) 0))
```

```scheme
(define (damage-me e weapon hp-lost)
(cond
((dead? e)
(display (string-append "Poor " (enemy-name e) " is already dead!\n")))
(else
(enemy-hp-set! e (- (enemy-hp e) hp-lost))
(display (string-append "You attack " (enemy-name e) ", doing " (number->string hp-lost) " damage!\n")))))
```

```scheme
(define hobgob
(make-enemy "Hobgoblin" 25))
```

```scheme
(enemy-name hobgob)
```

```scheme
(dead? hobgob)
```

```scheme
(damage-me hobgob "club" 10)
```

```scheme
(damage-me hobgob "sword" 20)
```

```scheme
(damage-me hobgob "coconut" 5)
```

```scheme
(dead? hobgob)
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

- Scheme allows for easy extension of datatypes

::::::::::::::::::::::::::::::::::::::::::::::::

