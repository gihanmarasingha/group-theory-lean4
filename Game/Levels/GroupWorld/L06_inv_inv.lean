import GameServer.Commands

import Game.Levels.GroupWorld.L05_unique_identity

World "GroupWorld"
Level 6
Title "Inverse of inverse"

Introduction "
In this level, you'll use a `calc` proof to show $(a^{-1})^{-1} = a$, for every
$a$ in a group $G$.

**Remember** enter `\\-1` to produce `⁻¹`.

You will need to add more lines of the calculation. Each line should take the form
`_ = expr := by rw [fact]`, where `fact` is the name of the definition or theorem you are using
and `expr` is some mathematical expression.
"

namespace MyGroup

open Group

variable {G : Type} [Group G]

/--
`inv_inv (b : G) h` is the proof of `b = 1` if `h` is the hypothesis
`h :  ∀ (a : G), b * a = a`.

This is uniqueness of (left) identity in a group.
-/
TheoremDoc MyGroup.inv_inv as "inv_inv" in "GroupWorld"

/-- For every eleement $a$ in a group $G$, we have $(a^{-1})^{-1} = a$. -/
Statement inv_inv (a : G) : a⁻¹⁻¹ = a := by

  Template
    calc
      a⁻¹⁻¹ = a⁻¹⁻¹ * 1 := by Hole rw [mul_one]
      _ = a := by Hole rw [←mul_left_inv a, ←mul_assoc, mul_left_inv, one_mul]
Conclusion "
Excellent!
"

end MyGroup
