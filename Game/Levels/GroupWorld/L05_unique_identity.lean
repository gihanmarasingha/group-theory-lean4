import GameServer.Commands

import Game.MyGroup.Definition

World "GroupWorld"
Level 5
Title "Uniqueness of identity"

Introduction "
We'll show that the identity is unique. That is, we'll prove:

**Theorem** Suppose $b$ is an element of $G$ such that $b * a = a$,
for every $a$ in $G$. Then $b = 1$.

We'll use the following 'traditional' mathematics proof as a template.

**Proof**
$$
\\begin{align*}
b & = b * 1 && [\\text{by identity property}] \\\\
  & = 1.     && [\\text{by the hypothesis}]
\\end{align*}
$$

You'll work on the entire proof file in this level, rather than writing a proof
a line-at-a-time. In the pane on the right, replace each `sorry` with an appropriate
rewrite.

*Note* to rewrite with the hypothesis `h`, use `rw [h]`.
"

/-- `calc` is used to write a 'calculation-style' proof
-/
TacticDoc «calc»

NewTactic «calc»

/-- `Template` for internal use
-/
TacticDoc Template

/-- `Hole` for internal use
-/
TacticDoc Hole

NewHiddenTactic Template Hole

namespace MyGroup

open Group

variable (G : Type) [Group G]

/-- Let $b$ be an element of a group $G$. Suppose for every $a$ in $G$, that
$b * a = a$. Call this assumption $h$. Then $b = 1$. -/
Statement (b : G) (h : ∀ (a : G), b * a = a) : b = 1 := by
  Hint (hidden := true) "blah"

  Template
    calc
      b = b * 1 := by Hole rw [mul_one]
      _ = 1     := by Hole rw [h]
Conclusion "
Almost there. Just one more property!
"

end MyGroup
