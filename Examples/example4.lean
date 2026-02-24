import Mathlib
variable (a b c d : Nat)

-- 右からの分配法則
theorem add_mul_right_1 : (a + b) * c = a * c + b * c := by
  calc
    _ = a * c + b * c := by rw [Nat.add_mul]


theorem add_mul_right_2 : (a + b) * (c + d) = a * c + a * d + b * c + b * d := by
  calc
    (a + b) * (c + d) = a * (c + d) + b * (c + d) := by rw [Nat.add_mul]
    _                 = (a * c + a * d) + b * (c + d) := by rw [Nat.mul_add]
    _                 = (a * c + a * d) + (b * c + b * d) := by rw [Nat.mul_add]
    _                 = a * c + a * d + b * c + b * d := by rw [← Nat.add_assoc]


theorem add_rearrange (a b c d : Nat) : (a + b) + (c + d) = (a + c) + (b + d) := by
  calc
    (a + b) + (c + d) = a + (b + (c + d)) := by rw [Nat.add_assoc]
    _                 = a + (c + (b + d)) := by rw [Nat.add_left_comm b c d]
    _                 = (a + c) + (b + d) := by rw [← Nat.add_assoc]
