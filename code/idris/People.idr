module People

import person
import bool
import list
import nat

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person 
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false




people: list Person
people = tom::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) =  (age h) :: (mapAge t)

Map': (a->b) -> list a -> list b
Map' f nil = nil
Map' f (h::t) =  (f h) :: (Map' f t)

women: list Person
women = Filter gender people

wAges: list Nat
wAges = Map' age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine= list.foldr plus 0 (Map' age (Filter gender people))

query: (value -> result -> result) -> result -> (tuple -> value) -> (tuple -> bool) -> (list tuple) -> result
-- query = reduce id project select relation = list.foldr reduce id (Map project (Filter select relation))



 

 
