module dna

import bool
import pair
import list
import ite

data base = A | T | C | G

Base: list base
Base = (A::T::C::G::nil)

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base _ = G

complement_strand: list base -> list base
complement_strand l = (Map complement_base l)


-- Write a function called strand1 that takes a list (pair base base) representing a DNA molecule and that returns a value of type list base representing the first strand of the given DNA molecule. Write an analogous strand2 function to return the second strand of a given DNA molecule. 

strand1: list (pair base base) -> list base
strand1 l = Map fst l

strand2: list (pair base base) -> list base
strand2 l = Map snd l

f: base -> pair base base
f a = (mkPair a (complement_base a ))

complete: list base -> list (pair base base)
complete l = Map f l

equ: base -> base -> Nat
equ A A = 1
equ T T = 1
equ C C = 1
equ G G = 1
equ _ _ = 0



countbase: list base -> base -> Nat
countbase l c = list.foldr plus 0 (Map (equ c) l) 











 
 
 
 
 
 
