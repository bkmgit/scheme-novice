---
title: "Why Learn Scheme"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- Why learn Scheme?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Understand how Scheme relates to other programming languages
- Know about some Scheme implementations
- Query different types in Scheme

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Scheme is a programming language within the lisp family of programming
languages.  There are many implementations of Scheme, this lesson will
use [Gambit Scheme](http://gambitscheme.org/).


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

### Types in Scheme

```scheme
(string? "abc")
```

```scheme
(string? 123)
```

```scheme
(string? "123")
```

```scheme
(integer? 123)
```

```scheme
(integer? "123")
```

```scheme
(boolean? #t)
```

```scheme
(flonum? 0.123)
```

```scheme
(fixnum? 12)
```

```scheme
(number? 12.1)
```

```scheme
(rational? 5/6)
```

```scheme
(real? 2+3i)
```

```scheme
(complex? 2+3i)
```

```scheme
(char? #\g)
```


::::::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Can you do it?

What is the output of this command?

```scheme
(string? (number->string (+ 3 6)))
```

:::::::::::::::::::::::: solution

## Output

```output
#t
```

:::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints 

- Scheme is a part of the Lisp family of programming languages
- There are several implementations of Scheme, choose one appropriate for your needs

::::::::::::::::::::::::::::::::::::::::::::::::

