module relationTest

import bool
import list
import pair
import relation
import basketball

-- expect 119
l1: Nat
l1 = query plus 0 age championship player

-- expect 124
l2: Nat
l2 = query2 player championship age plus 5

-- expecting 1
l3: Nat
l3 = countOne 2


-- expecting 3
l4: Nat
l4 = count_rel player championship

countTwo: a -> Nat
countTwo v = 2

-- expecting 6
l5: Nat
l5 = sum_rel player championship countTwo

l6: pair Nat Nat
l6 = ave_rel player championship age
