import GameServer.Commands

import Game.MyGroup.Definition

World "GroupWorld"
Level 3
Title "Multiplicative associativity"

Introduction "
Brackets can be shifted in a group. This property is called associativity. In Lean, `mul_assoc`
is the theorem that $(a*b)*c = a*(b*c)$.
"

/-- `mul_assoc` is a proof that `(a * b) * c = a * (b * c)`

Note that Lean will write `(a * b) * c` as `a * b * c` to minimise the use of brackets.
-/
DefinitionDoc MyGroup.Group.mul_assoc as "mul_assoc"

NewDefinition MyGroup.Group.mul_assoc

namespace MyGroup

open Group

variable {G : Type} [Group G]

/-- Let $a, b, c$ be elements of $G$. Show that $(a * b) * (b * c) = (a * (b * b)) * c$. -/
Statement (a b c : G) : (a * b) * (b * c) = (a * (b * b)) * c := by
  Hint (hidden := true) "You'll need several rewrites, which can be done all on one line."
  rw [mul_assoc]
  rw [mul_assoc]
  rw [mul_assoc]

Conclusion "
Almost there. Just one more property!
"

end MyGroup
