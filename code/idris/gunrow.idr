module gunrow

import list

data country = Argentina | Austrailia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 ||| by gun for homocides, suicides,unintentional, other
data gunrow = mkGunrow country Nat Nat Nat Nat 

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

austra: gunrow
austra = mkGunrow Austrailia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0 

usa: gunrow
usa = mkGunrow USA 255 670 16 9

test: list gunrow
test = hond :: nil

listCountry: list gunrow
listCountry = appendp (argen :: nil) (austra :: austri :: hond :: usa :: nil)




