import GameServer.Commands

import Game.Levels.Basics.L03_mul_right_inv

World "Basics"
Level 4
Title "Uniqueness of inverse"

Introduction "
In a previous level, you showed uniqueness of identity. Now we will show uniqueness of inverses.

That is, you've prove that if $a * b = 1$ then $a^{-1} = b$.

Below is a template proof. Replace the `sorry` in the editor pane with this template.
To complete the proof, fill in the `sorry` placeholders.

```
calc
  a⁻¹ = sorry   := by sorry
  _ =  sorry    := by sorry
  _ =  sorry    := by sorry
  _ =  sorry    := by sorry
  _ = b         := by sorry
```
"

namespace MyGroup

open Group

variable {G : Type} [Group G]

/--
`inv_eq_of_mul_eq_one (h : a * b = 1)` is the proof that `a⁻¹ = b`.

This is the uniqueness of inverses.
-/
TheoremDoc MyGroup.inv_eq_of_mul_eq_one as "inv_eq_of_mul_eq_one" in "Basics"

/-- Let $a$ be an element of a group $G$. Then $a * a^{-1} = 1$. -/
Statement inv_eq_of_mul_eq_one {a b : G} (h : a * b = 1) : a⁻¹ = b := by

  Template
    Hole
    calc
      a⁻¹ = a⁻¹ * 1       := by rw [mul_one]
      _ =  a⁻¹ * (a * b)  := by rw [h]
      _ = (a⁻¹ * a) * b   := by rw [mul_assoc]
      _ = 1 * b           := by rw [mul_left_inv]
      _ = b               := by rw [one_mul]
Conclusion "
Excellent!
"

end MyGroup
