module nat

import bool
import eq
import Serialize
import list

data nat = O | S nat

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat 
mult O m = O
mult (S n) m = add m (mult m n)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

ex: nat -> nat -> nat
ex O O = O
ex O n = O
ex x O = (S O)
ex x (S n) = (mult x (ex x n))

pfib: nat -> nat
pfib O = O
pfib (S O) = (S O)
pfib (S (S n)) = add (pfib (S n)) (pfib n)

eql_nat: nat->nat->bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)

h4: nat
h4 = add (S (S O)) (S (S (S O)))

s: String
s = toString h4




 
