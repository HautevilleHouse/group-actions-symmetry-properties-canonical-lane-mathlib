import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.InvariantSubspace

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure RepresentationPackage (G : Type u) (V : Type v) [AddCommGroup V] [Module ℝ V] where
  rep : G → (V →ₗ[ℝ] V)
  identity : ∀ v : V, rep (1 : G) v = v
  homomorphism : ∀ (g h : G) (v : V), rep (g * h) v = rep g (rep h v)
  continuity : Prop

structure RepresentationEvidence {G : Type u} {V : Type v} [AddCommGroup V] [Module ℝ V] (R : RepresentationPackage G V) where
  identityClosed : R.identity
  homomorphismClosed : R.homomorphism
  continuityClosed : R.continuity

def RepresentationClosed {G : Type u} {V : Type v} [AddCommGroup V] [Module ℝ V] (R : RepresentationPackage G V) : Prop :=
  R.identity ∧ R.homomorphism ∧ R.continuity

theorem representation_closed_from_evidence {G : Type u} {V : Type v} [AddCommGroup V] [Module ℝ V] (R : RepresentationPackage G V) (E : RepresentationEvidence R) : RepresentationClosed R := by
  exact And.intro E.identityClosed (And.intro E.homomorphismClosed E.continuityClosed)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse