module boolold

import bool

--"Exam Problem #2: There are 16 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 16 such functions, and no more." 

pand: bool -> bool -> bool
pand true a = id a
pand false a = constFalse a

por: bool -> bool -> bool
por true a = constTrue a
por false a = id a

pxor: bool -> bool -> bool
pxor true a = not a
pxor false a = id a 

pnand: bool -> bool -> bool
pnand true a = not a
pnand false a = constTrue a

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false
