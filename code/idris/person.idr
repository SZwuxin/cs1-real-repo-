module Person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor mkPerson
    name : String
    age : Nat
    height: Nat
    gender: bool

-- An example value of type Person
Tom: Person
Tom = mkPerson "Tommy" 27 72 true

Mary: Person
Mary = mkPerson "Mary" 21 68 true
-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.

NewAge: Person -> Nat -> Person
NewAge p a = record {age = a} p

NewName: Person -> String -> Person
NewName p n = record {name = n} p

Newheight: Person -> Nat -> Person
Newheight p h = record {height = h} p

Newgender: Person -> bool -> Person
Newgender p g = record {gender = g} p

as: Nat
as = age Tom

getAge: Person -> Nat
getAge = age

bs: Nat
bs = getAge Tom

chong: Person
chong = record { age = 20} Tom

chong': Person
chong' = record { name = "asd" } chong

setname' : Person -> String -> Person
setname' (mkPerson n a h g) n' = mkPerson n' a h g
