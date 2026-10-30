---
title: "Iteration and Recursion"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How can we repeatedly execute tasks in scheme?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Learn how to perform a task again with changed input arguments

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

```scheme
(string-length "cat")
```

```scheme
(string-length "mouse")
```

```scheme
(map string-length '("cat" "mouse" "cheese"))
```

```scheme
(define (symbol-length sym)
  (string-length (symbol->string sym)))
```

```scheme
(map symbol-length '(cat mouse cheese))
```

```scheme
(import (srfi 13)) ; string-upcase
(map (lambda (str)
      (string-append "I just love "
       (string-upcase str)
       "!!!"))
      '("oranges" "strawberries" "pineapples"))
```

```scheme
(for-each (lambda (str)
           (display
            (string-append "I just love "
              (string-upcase str)
              "!!!")))
             '("Pilau" "Jollof rice" "Biryani" "Paella" "Jambalaya"))
```


```scheme
(define (for-each proc lst)
 (cond
   ((eq? lst '())
     'done)
    (else
     ((let ((item (car lst)))
       (proc item)
       (for-each proc (cdr lst)))))))
```

Add example of using above

```scheme
(define (build-tree depth)
   (cond
    ((= depth 0)
     '(0))
    (else
     (list depth
           (build-tree (- depth 1))
           (build-tree (- depth 1))))))
```

```scheme
(letrec ((alice
          (lambda (first?)
           (report-status "Alice" first?)
           (cond
	    (first?
	     (bob #f)))))
           (bob
            (lambda (first?)
            (report-status "Bob" first?)
            (cond
	     (first?
	      (alice #f)))))
           (report-status
            (lambda (name first?)
             (display
              (string-append name " is "
                             (cond
			      (first?
                               "first")
			       (else
                                "second"))
                              "!\n")))))
        (alice #t)
        (display "-----\n")
        (bob #t))
```

```scheme
(let loop ((words '("carrot" "potato" "pea" "celery"))
           (num-words 0)
	   (num-chars 0))
  (cond
   ((eq? words '())
    (display
     (string-append "We found " (number->string num-words)
                    " words and " (number->string num-chars)
		    " chars!\n")))
    (else
     (loop (cdr words)
           (+ num-words 1)
           (+ num-chars (string-length (car words)))))))
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

- Scheme is a part of the Lisp family of programming languages
- There are several implementations of Scheme, choose one appropriate for your needs

::::::::::::::::::::::::::::::::::::::::::::::::

