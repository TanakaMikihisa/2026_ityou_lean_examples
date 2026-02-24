import Mathlib

-- 数列 a(n) = (n+1)/n を定義
def a (n : ℕ) : ℚ := (n + 1) / n


-- 補題 (n+2)*n < (n+1)*(n+1)
lemma cross_mul_lt (n : ℕ) : (n + 2) * n < (n + 1) * (n + 1) := by
  calc
    (n + 2) * n = n * n + 2 * n       := by ring
    _           < n * n + 2 * n + 1   := by omega
    _           = (n + 1) * (n + 1)   := by ring


-- 定理1 a(n+1) < a(n) を示す。
theorem a_succ_lt_a (n : ℕ) (hn : 0 < n) : a (n + 1) < a n := by
  dsimp [a]
  rw [div_lt_div_iff₀ (by positivity) (by positivity)]
  exact_mod_cast cross_mul_lt n


-- 定理2 a(1) * a(2) * ... * a(n) = n + 1
theorem a_prod_eq_succ (n : ℕ) :
    (Finset.range n).prod (fun i => a (i + 1)) = (n + 1 : ℚ) := by
  -- induction n with: n に関する帰納法を行う
  induction n with
  | zero => simp [a]
  | succ n ih =>
    -- Finset.prod_range_succ: n+1 までの積を「nまでの積」と「最後の項で分ける」
    -- ih: nの時に成り立つ仮定を利用
    rw [Finset.prod_range_succ, ih, a]
    field_simp
    ring_nf
    norm_cast
