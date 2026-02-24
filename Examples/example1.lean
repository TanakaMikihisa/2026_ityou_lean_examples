variable (p q r : Prop)

theorem imp_trans (h1 : p → q) (h2 : q → r) : p → r :=
  fun h3 : p =>
  show r from h2 (h1 h3)


#check imp_trans -- imp_trans (h1 : p → q) (h2 : q → r) : p → r
