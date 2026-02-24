import Mathlib

variable (f : Nat → Nat)
variable (h : ∀ x : Nat, f x ≤ f (x + 1))

example : f 0 ≤ f 3 :=
  -- haveは示すゴールを一時的に変えて証明を行うもの
  have : f 0 ≤ f 1 := h 0
  -- thisは一つ前の命題を参照(h 0のこと)
  -- Nat.le_transは自然数の不等式の推移律(this = h 0(f0 ≤ f1) とh 1(f1 ≤ f2) の間の不等式)
  -- つまり、f 0 ≤ f 2 が成り立つことを示している。
  have : f 0 ≤ f 2 := Nat.le_trans this (h 1)
  -- こちらも同様にthis = h 1で、h 1と h2から不等式の推移律を利用
  -- showで元々の定理が示したい内容に到達
  show f 0 ≤ f 3 from Nat.le_trans this (h 2)
