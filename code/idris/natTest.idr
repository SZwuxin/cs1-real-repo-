module natTest

import nat
import bool
import natsave

||| Given a pair of natural numbers, (a, b), return true
||| If a <= b otherwise return false

||| a test, expecting true
h1: bool
h1 = le O (S O)

||| a test, expecting false
h2: bool
h2 = le (S (S O)) O

||| a test, expecting true
h3: bool
h3 = le (S O) (S (S O))

||| a test, expecting false
h4: bool
h4 = le (S (S (S O))) (S (S O))

|||given a pair of natural numbers, (x, n), return the value of x raised to the |||nth power

||| a test, expecting (S O)
h5: nat
h5 = ex O O

||| a test, expecting O
h6: nat
h6 = ex O (S O)

||| a test, expecting (S O)
h7: nat
h7 = ex (S (S O)) O

||| a test, expecting (S (S (S (S O))))
h8: nat 
h8 = ex (S (S O)) (S (S O))

||| given a pair of natural numbers, (a, b), return true if a is equal to b, ||| otherwise return false

||| a test, expecting true
h9: bool
h9 = eq O O

||| a test, expcting false
h10: bool
h10 = eq (S (S O)) O

||| a test, expecting true
h11: bool
h11 = eq (S (S O)) (S (S O))

||| a test, expecting false
h12: bool
h12 = eq (S O) (S (S O))

||| given a pair of natural numbers, (a, b), return true if a is greater than ||| b, otherwise return false

||| a test, expecting false
h13: bool
h13 = gt O (S O)

||| a test, expecting true
h14: bool
h14 = gt (S O) O

||| a test, expecting false
h15: bool
h15 = gt (S O) (S (S O))

||| a test, expecting true
h16: bool
h16 = gt (S (S (S O))) (S (S O))

||| given a pair of natural numbers, (a, b), return true of a is greater than ||| or equal to b

||| a test, expecting true
h17: bool
h17 = ge (S O) O

||| a test, expecting false
h18: bool
h18 = ge O (S (S O))

||| a test, expecting true
h19: bool
h19 = ge (S (S O)) (S O)

||| a test, expecting false
h20: bool
h20 = ge (S O) (S (S O))

||| given a pair of natural numbers, (a, b), return true if a is less than b

||| a test, expecting true
h21: bool
h21 = lt O (S O)

||| a test, expecting false
h22: bool
h22 = lt (S O) O

||| a test, expecting true
h23: bool
h23 = lt (S O) (S (S O))

||| a test, expecting false
h24: bool
h24 = lt (S (S O)) (S O)

||| fibonacci test

||| a test, expecting O
h50: nat
h50 = pfib O

||| a test, expecting S O
h51: nat
h51 = pfib (S O)

||| a test, expecting (S (S (S O)))
h52: nat
h52 = pfib (S (S (S (S O))))

||| add 
||| a test, expecting (S (S (S (S (S O)))))

h53: nat
h53 = add (S (S (S O))) (S (S O))

||| a test, expecting (S (S (S O)))

h54: nat
h54 = add (S O) (S (S O))

||| mult
||| a test, expecting O

h55: nat
h55 = mult O m

||| a test, expecting (S (S (S (S (S (S O))))))
h56: nat
h56 = mult (S (S O)) (S (S (S O)))

||| fact
||| a test, expecting (S O)

h57: nat
h57 = fact O

||| a test, expecting (S (S O))
h58: nat
h58 = fact (S (S O))

||| ex
||| a test, expecting (S O)

h59: nat
h59 = ex (S O) O

||| a test, expecting (S (S (S (S O))))
h60: nat
h60 = ex (S (S O)) (S (S O))


