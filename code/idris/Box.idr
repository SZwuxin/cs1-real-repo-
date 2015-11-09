module Box

import Serialize
import eq

data nat = O | S nat

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox t) = t

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ",)"


