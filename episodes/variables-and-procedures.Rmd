---
title: "Variables and Procedures"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How do you use variables and procedures in Scheme?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explore differences between Gambit Scheme and Guile Scheme

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

An alternative implementation of the exercies in
[variables and procedres](https://files.spritely.institute/papers/scheme-primer.html#scheme-variables-and-procedures)
section of the
[Spritely Scheme Primer](https://files.spritely.institute/papers/scheme-primer.html)
ported to Gambit Scheme.

```scheme
(define (chatty-add chatty-name . nums)                                                   
     (string-append chatty-name ", If you add these together you get " (number->string (apply + nums)) "!\n"))
```

```scheme
(define (shopkeeper thing-to-buy    
           #!optional (how-many 1)
           (cost 20)
           #!key (shopkeeper "Sammy")
           (store "Plentiful Great Produce"))
           (display
            (string-append "You walk into "
                           store
                           ", grab something from the shelves,\n"
                           "and walk up to the counter.\n\n"
                           shopkeeper
                           " looks at you and says "
                           "'"
                           (number->string how-many)
                           " "
                           thing-to-buy
                           ", eh? That will be "
                           (number->string (* cost how-many))
                           " coins!'\n")))
```

```scheme
(shopkeeper "apples")
```

```output
You walk into Plentiful Great Produce, grab something from the shelves,
and walk up to the counter.

Sammy looks at you and says '1 apples, eh? That will be 20 coins!'
```

```scheme
(shopkeeper "bananas" 10 28)
```

```output
You walk into Plentiful Great Produce, grab something from the shelves,
and walk up to the counter.

Sammy looks at you and says '10 bananas, eh? That will be 280 coins!'
```

```scheme
(shopkeeper "screws" 3 2
               shopkeeper: "Horace"
               store: "Horace's Hardware")
```

```output
You walk into Horace's Hardware, grab something from the shelves,
and walk up to the counter.

Horace looks at you and says '3 screws, eh? That will be 6 coins!'
```

Need newer version of interpreter for `let-values`
# https://stackoverflow.com/questions/77866133/how-to-use-let-values-in-gambit-scheme


::::::::::::::::::::::::::::::::::::: keypoints 

- Scheme implementations may differ in exact functionality offered

::::::::::::::::::::::::::::::::::::::::::::::::

