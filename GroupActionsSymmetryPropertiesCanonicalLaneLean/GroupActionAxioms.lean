import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure GroupActionPackage (G : Type u) (X : Type v) where
  act : G → X → X
  identity : ∀ x : X, act (1 : G) x = x
  compatibility : ∀ (g h : G) (x : X), act (g * h) x = act g (act h x)
  continuity : Prop

structure GroupActionEvidence {G : Type u} {X : Type v} (A : GroupActionPackage G X) where
  identityClosed : A.identity
  compatibilityClosed : A.compatibility
  continuityClosed : A.continuity

def GroupActionClosed {G : Type u} {X : Type v} (A : GroupActionPackage G X) : Prop :=
  A.identity ∧ A.compatibility ∧ A.continuity

theorem group_action_closed_from_evidence {G : Type u} {X : Type v} (A : GroupActionPackage G X) (E : GroupActionEvidence A) : GroupActionClosed A := by
  exact And.intro E.identityClosed (And.intro E.compatibilityClosed E.continuityClosed)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse