module list

import bool
import ite
import eq
import Serialize

data list a = nil | (::) a (list a)

infixr 7 ::
length: list a -> Nat
length nil = 0
length (n :: l') = S (length l')

||| append as an infix operator ++
(++): list a -> list a -> list a 
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the elements of a list
Map: (a->b) -> list a -> list b
Map f nil = nil
Map f (h::t) = (f h) :: (Map f t)

Filter: (a->bool) -> list a -> list a
Filter f nil = nil
Filter f (h::t) = ite (f h)
                     (h::(Filter f t))
                          (Filter f t)
 
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)



member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                 true
                 (member v t)
                 

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)
  
subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = false
subset_elements (h::t) l2 = and (member h l2) (subset_elements t l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)


list_toString: (Serialize a) => list a -> String
list_toString nil = ""
list_toString (h::nil) = (toString h)
list_toString (h::t) = (toString h) ++ "," ++ (list_toString t)

instance (Serialize a) => Serialize (list a) where 
  toString l = "[" ++ (list_toString l) ++ "]"



