import Mathlib


-- 自然数の足し算の交換法則
example (a b : Nat) : a + b = b + a :=
  Nat.add_comm a b

-- 自然数の掛け算の交換法則
example (a b : Nat) : a * b = b * a :=
  Nat.mul_comm a b

-- 自然数の掛け算の分配法則
example (a b c : Nat) : a * (b + c) = a * b + a * c :=
  Nat.mul_add a b c

-- 自然数の掛け算の結合法則
example (a b c : Nat) : (a * b) * c = a * (b * c) :=
  Nat.mul_assoc a b c



