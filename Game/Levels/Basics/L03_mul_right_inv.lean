import GameServer.Commands

import Game.Levels.Basics.L02_inv_inv

World "Basics"
Level 3
Title "Right inverse"

Introduction "
We've seen that $a^{-1} * a = 1$. In this level, you'll prove that $a * a^{-1} = 1$.

Below is a template proof. Replace the `sorry` in the editor pane with this template.
To complete the proof, fill in the `sorry` placeholders.

```
calc
  a * a⁻¹ = sorry   := by sorry
  _ = 1         := by sorry
```

"

namespace MyGroup

open Group

variable {G : Type} [Group G]

/--
`mul_right_inv (a : G)` is the proof that `a * a⁻¹ = 1`.

This is right inverse property
-/
TheoremDoc MyGroup.mul_right_inv as "mul_right_inv" in "Basics"

/-- Let $a$ be an element of a group $G$. Then $a * a^{-1} = 1$. -/
Statement mul_right_inv (a : G) : a * a⁻¹ = 1 := by

  Template
    Hole
    calc
      a * a⁻¹ = a⁻¹⁻¹ * a⁻¹   := by rw [inv_inv]
      _ = 1                   := by rw [mul_left_inv]
Conclusion "
Excellent!
"

end MyGroup
