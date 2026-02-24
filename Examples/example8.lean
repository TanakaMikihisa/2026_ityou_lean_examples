import Mathlib

-- 平方根の関数を定義
def sqrtFloat (x : Float) : Float :=
  if x ≥ 0 then
    Float.sqrt x
  else
    0

#check sqrtFloat
#eval sqrtFloat 4.0

-- 入力を複素数・出力も複素数とする平方根
noncomputable def sqrtComplex (x : ℂ) : ℂ :=
  if x.im = 0 then
    if 0 ≤ x.re then
      (Real.sqrt x.re : ℂ)
    else
      (Real.sqrt (-x.re) : ℂ) * Complex.I
  else
    0

#check sqrtComplex
