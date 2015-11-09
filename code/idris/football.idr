module football

import list

data team = Eagles | Falcons | Seahawks

data rowThing = mkrowThing team Nat Nat Nat

eag: rowThing
eag = mkrowThing Eagles 1 2 3 

fal: rowThing
fal = mkrowThing Falcons 4 5 6

Sea: rowThing
Sea = mkrowThing Seahawks 7 8 9

teamname: rowThing -> team
teamname (mkrowThing t p r s) = t

passyard: rowThing -> Nat
passyard (mkrowThing t p r s) = p

rushyard: rowThing -> Nat
rushyard (mkrowThing t p r s) = r

sack: rowThing -> Nat
sack (mkrowThing t p r s) = s



Listteam: list rowThing
Listteam = appendp (eag :: nil) (fal :: Sea :: nil)

