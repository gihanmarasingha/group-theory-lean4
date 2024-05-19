import GameServer.Commands

import Game.MyGroup.Definition

World "GroupDefinition"
Level 2
Title "Multiplicative identity on the left"

Introduction "
In the previous level, we saw that $a * 1 = a$ for every $a$ in a group $G$. In this level, we
introduce the property that $1 * a = a$, for every $a$ in $G$.
"

/-- `one_mul` is a proof that `1 * a = a`
-/
DefinitionDoc MyGroup.Group.one_mul as "one_mul"

NewDefinition MyGroup.Group.one_mul

namespace MyGroup

open Group

variable {G : Type} [Group G]

/-- Let $a$ be an element of $G$. Show that $1 * (a * 1) = a$. -/
Statement (a : G) : 1 * (a * 1) = a := by
  Hint (hidden := true) "Enter `rw [mul_one]` or `rw [one_mul]` in the text box and press \"Execute\"."
  Branch
    rw [mul_one]
    Hint (hidden := true) "Enter `rw [one_mul]` in the text box and press \"Execute\"."
    rw [one_mul]
  rw [one_mul]
  Hint (hidden := true) "Enter `rw [mul_one]` in the text box and press \"Execute\"."
  rw [mul_one]

Conclusion "
I asked you to perform rewrites on two separate lines. But these rewrites can be combined on one
line as `rw [mul_one, one_mul]`.

In the next level, we'll learn another property of groups.
"

end MyGroup
