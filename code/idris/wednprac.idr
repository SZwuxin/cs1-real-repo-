module booldays

import days
import bool

data pair days bool = mkPair days bool



fst: pair days bool -> days
fst (mkPair f s) = f

snd: pair days bool -> bool
snd (mkPair f s) = s



