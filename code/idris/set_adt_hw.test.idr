module sethwtest

-- imports needed for specification
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import set_adt_hw


-- imports needed for list-based implementation
import list
import ite

l': list nat
l' = O::S O::(S (S O))::nil
-- expect mkSet (S O:: (S (S O))::nil)
s1: set nat
s1 = set_remove O (mkSet(l')) 

--expect (S (S (S (S O))))
l2: list nat
l2 = (O::(S O):: (S (S O)):: (S (S (S O))):: nil)
s2: nat
s2 = set_cardinality (mkSet l2)

-- expect true

l3: list nat
l3 = O::S O::(S (S O))::nil

s3: bool
s3 = set_member O (mkSet l3)

-- expect mkSet O::S O:: S (S O)::nil

l4: list nat
l4 = O::S O::nil

l5: list nat
l5 = (S O)::S (S O)::nil

s4: set nat
s4 = set_union (mkSet l4) (mkSet l5)

-- expect mkSet S O::nil

s5: set nat
s5 = set_intersection (mkSet l4) (mkSet l5)

-- expect mkSet O::nil

s6: set nat
s6 = set_difference (mkSet l4) (mkSet l5)











-- expect mkSet (mkPair O (S O):: mkPair O (S (S O)) :: (mkPair (S O)
  -- (S O):: mkPair (S O) (S (S O)):: nil)
s7: set (pair nat nat)
s7 = set_product (mkSet l4) (mkSet l5)

