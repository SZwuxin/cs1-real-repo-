module listTest

import list
import bool
import People
import person
import nat

li: list bool
li = true :: false :: true :: true :: nil

Map: list bool
Map = Map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

Filter: list nat
Filter = Filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
 
