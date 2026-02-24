import Mathlib
variable (α β : Type u) (x y : α)

-- x = y ならば f(x) = f(y) を示す
theorem eq_imp_f_eq (f : α → β) (h : x = y) : f x = f y :=
  -- congrArg f h: f: α → β に対して h: x = y を適用して f(x) = f(y) を示すもの
  congrArg f h
