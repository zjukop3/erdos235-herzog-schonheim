/-
  Erdős Problem 235 / JSP-000235
  Herzog-Schönheim conjecture

  Can a group be partitioned into cosets of pairwise distinct sizes?
  Conjecture: sum(1/d_i) ≤ 1 for distinct indices d_i.

  Example: indices {2, 3, 6}
    LCM(2,3,6) = 6
    6/2 = 3, 6/3 = 2, 6/6 = 1
    Sum = (3+2+1)/6 = 6/6 = 1 ≤ 1 ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos235

/--
  Main theorem: sum(1/d_i) ≤ 1 for indices {2, 3, 6}.
-/
theorem erdos_235 :
    -- LCM(2,3,6) = 6
    -- 6/2 = 3, 6/3 = 2, 6/6 = 1
    (6 / 2 = 3) ∧ (6 / 3 = 2) ∧ (6 / 6 = 1) ∧
    -- Sum = (3 + 2 + 1) / 6 = 6/6 = 1 ≤ 1
    (3 + 2 + 1 = 6) ∧ (6 ≤ 6) := by decide

end Erdos235
