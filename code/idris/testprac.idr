module nat

import pair
import bool

data nat = O | S nat

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

succ: nat -> nat
succ n = (S n)

pred: nat -> nat
pred (S n) = n

addp: pair nat nat -> nat
addp (mkPair O O) = O
addp (mkPair O n) = n
addp (mkPair (S n) m) = S (addp (mkPair n m))

multp: pair nat nat -> nat
multp (mkPair O n) = O
multp (mkPair n O) = O
multp (mkPair (S n) m) = (addp (mkPair m (multp (mkPair n m)))) 

factp: nat -> nat
factp O = (S O)
factp (S O) = (S O)
factp (S n) = (multp (mkPair (S n) (factp n)))

xorp: pair bool bool -> bool
xorp (mkPair true true) = true
xorp (mkPair _ _) = false

fab: nat -> nat
fab O = O
fab (S O) = (S O)
fab (S (S n)) = (addp (mkPair (fab (S n)) (fab n)))

expp: pair nat nat -> nat
expp (mkPair O O) = (S O)
expp (mkPair O n) = (O)
expp (mkPair n O) = (S O)
expp (mkPair n (S m)) = (multp (mkPair m (expp (mkPair n m)))) 

