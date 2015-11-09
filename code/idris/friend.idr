module friend

import boolold

||| a friend is someone who is or isn't trustworthy, who has a name, and who ||| has an age in years


data friend = mkfriend bool String Nat

f1: friend
f1 = mkfriend true "Tommy" 23

f2: friend 
f2 = mkfriend false "Barry" 34

getage: friend -> Nat
getage (mkfriend b s n) = n

getname: friend -> String
getname (mkfriend b s n) = s

gettrust: friend -> bool
gettrust (mkfriend b s n) = b

record Person where
  constructor mkperson
  name: String
  age: Nat
 
Newname: friend -> String -> friend
newName p n = record (name = n) p

p: person
p = mkPerson "hi" 3

t: Nat 
t = age p
n: String
n = name p
p': person
p' = newName p "there"


