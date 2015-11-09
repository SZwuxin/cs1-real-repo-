module foo

import list
import nat
import bool

fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)


fancymult: list nat -> nat
fancymult nil = O
fancymult (h::t) = mult h (fancymult t)


fancy: (a -> a -> a) -> a -> (list a) -> a
fancy f id nil = id 
fancy f id (h::t) = f (h) (fancy f id t)


