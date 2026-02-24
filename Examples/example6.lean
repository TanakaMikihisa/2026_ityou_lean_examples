import Mathlib

-- かけてから割ったら元通り
example (a b : Nat) (hb : 0 < b) : a * b / b = a :=
  Nat.mul_div_cancel a hb
