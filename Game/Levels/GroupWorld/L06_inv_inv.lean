import GameServer.Commands

import Game.MyGroup.Definition

World "GroupWorld"
Level 6
Title "Inverse of inverse"

Introduction "
In this level, you'll use a `calc` proof to show `a⁻¹⁻¹ = a`, for every
`a` in a group $G$.

**Remember** enter `\\-1` to produce `⁻¹`.

In each line `_ = sorry := by sorry`, replace the first sorry with an
expression and the second sorry with a rewrite proof.
"

namespace MyGroup

open Group

variable (G : Type) [Group G]

/--
`inv_inv (b : G) h` is the proof of `b = 1` if `h` is the hypothesis
`h :  ∀ (a : G), b * a = a`.

This is uniqueness of (left) identity in a group.
-/
TheoremDoc MyGroup.inv_inv as "inv_inv" in "GroupWorld"

/-- Let $b$ be an element of a group $G$. Suppose for every $a$ in $G$, that
$b * a = a$. Call this assumption $h$. Then $b = 1$. -/
Statement inv_inv (a : G) : a⁻¹⁻¹ = a := by

  Template
    calc
      a⁻¹⁻¹ = a⁻¹⁻¹ * 1 := by sorry
      _ = sorry := by sorry
      _ = sorry := by sorry
      _ = sorry := by sorry
      _ = a     := by sorry
Conclusion "
Excellent!
"

end MyGroup
