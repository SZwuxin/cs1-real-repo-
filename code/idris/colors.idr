module colors

import pair
import bool

data color = red | green | blue | magenta | cyan | yellow

complement: color -> color
complement red = cyan
complement green = magenta
complement blue= yellow
complement cyan = red
complement magenta = green
complement _ = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

substractive: color -> bool
substractive c = not (additive c)

complements: pair color color -> bool
complements (mkPair red cyan)  = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements (mkPair cyan red) = true
complements (mkPair _ _) = false



mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan magenta) = blue
mixink (mkPair cyan yellow) = green



 
