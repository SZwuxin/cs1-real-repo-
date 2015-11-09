module nat

import bool
import pair
import nat

-- NOTE: Original post edited to remove %default total. You *will* get warnings about totality. Proceed anyway.

{- We now introduce a type to represent the natural numbers using
Peano arithmetic.

In this arithmetic, there are two especially important rules
- zero is a natural number
- the successor of any natural number is a natural number

From this pair of rules arises an infinity of natural numbers. Zero is
a natural number, and the successor of any natural number is a natural
number, so the successor of zero is a natural number; and now, because
the successor of zero is a natural number, its successor, i.e., the
successor of (the successor of zero) is one too; ad infinitum!

HOMEWORK #1: Learn this way of thinking by rehearsing it mentally
until you've really got it. Work with friends. Explain it to each
other. Test each other. -}

{- We capture this idea with the following deceptively simple data
type definition. What it says is that nat is a type, and there are two
ways to construct a nat. One is to use the constructor, O. The other
is to apply the constructor S to a value that is already known to be
of type nat.  Because O is already known to be of type nat, you can
thus apply S to O (yielding the term (S O)) and the result is also of
type nat. And now because it is a value of type nat, you can apply S
to it to get another value of type nat. Ad infinitum.

HOMEWORK #2: Study and think about this example as many times as
necessary to get it. Work with friends. Teach each other. Test each
other.  -}

-- Here's our data type definition.


-- HOMEWORK #3: In the REPL ask what are the types of nat, O and S.
-- Be sure you understand the answers! Teach, learning from and test
-- friends.

{-
Here are some examples of some objects (named values) of type nat.
-}


-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.
-- four


-- HOMEWORK #6: In the REPL, evaluate the types and values of z, o, t
-- and r, as well as your own values. (E.g., ":t o" will report the
-- type of o, and "o" will report its value (along with its type). Be
-- sure you understand the answers. In particular be sure you
-- understand how the variable expression, "r" is evaluated! Yup: r is
-- unfolded to S t; t is unfolded to S (S O); so the whole expression
-- unfolds to S (S (S O)). Be able to explain this evaluation process
-- verbally and in writing. Teach and test each other.

{-
The rest of this file contains functions operating on nats.
-}



-- HOMEWORK #7 Bind x to the result of applying isZero to r. Add your
-- code below this comment.

-- HOMEWORK #8 Bind y to the result of applying succ to O. Add code here.

y: nat
y = succ O


{- Next we define a function that when given a natural number returns
true if it's even and false otherwise. It is very, very important to
understand this example, your first example of a recursive function -}



-- HOMEWORK #9 Bind a, b, c, d, e respectively to the results of
-- applying evenb to O, (S O), (S (S O)) r, and (S r),
-- respectively. Add your code here.


--HOMEWORK #10 In English, describe all of the steps involved in
--evaluating the function application expression, evenb (S r). You
--must be able to explain this process to yourself and your friends!
--The idea is that you keep on applying reduction (simplification)
--rules until you get to a value that cannot be reduced further. Write
--your answer by filling in the following block comment.

{- Idris looks at the left side of function, and saw e, which is

already defined as a bool type. It then searchs for the right side of

the function and found evenb, a term that results in bool type. Then

it looks at the parentheses, S r being the number that succeeds r. It

looks at r and finds that r is a type nat with a value of S t, which

it continues to unfoil, until it finds t = S (S (O)). Then it evaluate

e as evenb (S (S (S (S (O))))). Then it looks at the previous evenb

function and reduces it to (S (S (O))) and eventually to O. It then

looks at evenb O and found the answer to be true

-}

-- HOMEWORK #11 Here's a function that takes a pair of natural numbers
-- (values of type nat) and that returns their sum (as another value
-- of type nat). We give you the function name and type along with the
-- left hand sides of the two rules that you'll need. We've filled in
-- the right hand sides with placeholders. Your task is to replace the
-- right hand sides of the two rules.

-- Here are a few examples of how this function should work, to get
-- you going. We use ==> to mean "reduces to" or "returns"

-- addp (mkPair O O) ==> O
-- addp (mkPair O (S (S O))) ==> S (S O)
-- addp (mkPair (S O) O) ==> S O
-- addp (mkPair (S (S O)) (S (S (S O)))) ==> S (S (S (S (S O))))

-- Completing the first rule should be pretty easy. Just think about
-- the most basic properties of arithmetic. The second rule is more
-- challenging. Go back and study the evenb example. Notice how we
-- used evenb within its own definition! The idea is that we can
-- compute evenb for a big number by returning the result that we get
-- when we apply it to a number that is two less than the number that
-- we started with. You're going to use a similar idea here.

-- This is the hardest but also the most important problem in this
  -- problem set. There is *no grading penalty* for not getting an
  -- answer to this problem. There is no grading reward for getting
  -- it. Really: do *not* collaborate on this problem. It will help
  -- us instructors to see how you do.

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

-- HOMEWORK 12 -- Use the REPL to verify that these tests return the
-- expected results

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))


||| given a pair of natural numbers, return its sum
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) =(addp (mkPair m (multp (mkPair n m))))

factp: nat -> nat
factp O = (S O)
factp (S n) = multp (mkPair (S n) (factp n))
 
||| Given apair of natural numbers, (a, b) return a-b
||| if a <= b, the answer will be o.
subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)

exp: pair nat nat -> nat
exp (mkPair O O) = (S O)
exp (mkPair O n) = O
exp (mkPair x O) = (S O)
exp (mkPair x (S n)) = (multp (mkPair x (exp (mkPair x n))))


lep: pair nat nat -> bool
lep (mkPair O m) =  true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair O m) = false
eqp (mkPair n O) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)

gtp: pair nat nat -> bool
gtp (mkPair O _) = false
gtp (mkPair n O) = true
gtp (mkPair (S n) (S m)) = gtp (mkPair n m)

gep: pair nat nat -> bool
gep (mkPair _ O) = true
gep (mkPair O m) = false
gep (mkPair (S n) (S m)) = gep (mkPair n m)

ltp: pair nat nat -> bool
ltp (mkPair O m) = true
ltp (mkPair _ O) = false
ltp (mkPair (S n) (S m)) = ltp (mkPair n m)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = (addp (mkPair (fib (S n)) (fib n)))

le: nat -> nat -> bool
le O m =  true
le (S n) O = false
le (S n) (S m) = le n m

eq: nat -> nat -> bool
eq  O O = true
eq  O m = false
eq  n O = false
eq (S n) (S m) = eq n m

gt: nat -> nat -> bool
gt O _ = false
gt n O = true
gt (S n) (S m) = gt n m

ge: nat -> nat -> bool
ge _ O = true
ge O m = false
ge (S n) (S m) = ge n m

lt: nat -> nat -> bool
lt O m = true
lt _ O = false
lt (S n) (S m) = lt n m
