import Mathlib

-- 偶数かどうか
def isEven (n : Nat) : Bool :=
  n % 2 == 0

-- nがmの倍数かどうか
def isMultiplyOf (n m : Nat) : Bool :=
  if m = 0 then
    false
  else
    n % m == 0

#check isEven  -- isEven (n : Nat) : Bool
#check isMultiplyOf -- isMultiplyOf (n m : Nat) : Bool

#eval isEven 4 -- True
#eval isMultiplyOf 4 12 -- False
#eval isMultiplyOf 2 3 -- False

