module basketball

import list
import bool
import relation
import pair

record Player where 
    constructor mkPlayer
    name : String
    age : Nat
    championship: bool
    
Ja: Player
Ja = mkPlayer "James" 30 true

P: Player
P = mkPlayer "Kobe" 37 true

Jo: Player
Jo = mkPlayer "Jordan" 52 true

player: list Player
player = Ja::P::Jo::nil

Sum_age: Nat
Sum_age = query plus 0 age championship player

count_age: Nat
count_age = count_rel player championship

Sum_championship: Nat
Sum_championship = sum_rel player championship countOne

Ave_championship: (pair Nat Nat)
Ave_championship = ave_rel player championship age




