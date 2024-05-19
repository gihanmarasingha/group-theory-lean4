import GameServer.Commands
import Game.Metadata

import Game.MyGroup.Definition

World "GroupDefinition"
Level 1
Title "Multiplicative identity"

Introduction "
A group $G$ is a set together with an operation $*$ and a distinguished element $1$, not
necessarily the same as the natural number $1$, that satisfies certain properties. We'll introduce
these properties in the next few levels. The first property, called `mul_one` asserts that
$a * 1 = a$.

To complete this level, just enter `rw [mul_one]` in the box in the middle pane.

*Note* `rw` is am abbreviation for the `rewrite` tactic. We use it to rewrite the target
`a * 1 = a` to the target `a = a` and thereby complete the proof.
"

/-- `rw` is used to rewrite the target or a hypothesis

If `h` is the name of a theorem `rw [h]` rewrites the target using `h`. For example, if `h` is
the theroem `a = b`, then `rw [h]` causes every instance of `a` in the target to be replaced with
`b`.
-/
TacticDoc rw

NewTactic rw

namespace MyGroup

/-- `mul_one` is a proof that `a * 1 = a`
-/
DefinitionDoc MyGroup.Group.mul_one as "mul_one"

NewDefinition MyGroup.Group.mul_one

open Group

variable (G : Type) [Group G]

/-- Let $a$ be an element of $G$. Show that $a * 1 = a$. -/
Statement (a : G) : a * 1 = a := by
  Hint "Enter `rw [mul_one]` in the text box and press \"Execute\"."
  rw [mul_one]


Conclusion "
Great, you've just used the right identity property of groups. We'll learn the left identity property
in the next level.
"

end MyGroup
