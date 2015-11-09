module dnaTest

import dna
import bool
import pair
import list
import ite

--expecting T
l1: base 
l1 = complement_base A

-- expecting T::A::G::nil
l2: list base
l2 = complement_strand (A::T::C::nil)

-- expecting (A:: G::T::nil)
l3: list base
l3 = strand1 (mkPair A T :: mkPair G C :: mkPair T A :: nil)

-- expecting (T::C::A::nil)
l4: list base
l4 = strand2 (mkPair A T :: mkPair G C :: mkPair T A :: nil)

-- expecting (mkPair A T :: mkPair T A :: mkPair C G :: nil)
l5: list (pair base base)
l5 = complete (A::T::C::nil)


-- expecting 1
l6: Nat
l6 = countbase (A::T::T::C::G::G::C::nil) A

