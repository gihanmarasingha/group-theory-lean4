import Mathlib.Algebra.Group.Defs

universe u

namespace MyGroup

class Group (G : Type u) extends One G, Mul G, Inv G where
  mul_assoc : ∀ a b c : G, (a * b) * c = a * (b * c)
  mul_left_inv : ∀ a : G, a⁻¹ * a = 1
  one_mul : ∀ (a : G), 1 * a = a
  mul_one : ∀ (a : G), a * 1 = a


end MyGroup
