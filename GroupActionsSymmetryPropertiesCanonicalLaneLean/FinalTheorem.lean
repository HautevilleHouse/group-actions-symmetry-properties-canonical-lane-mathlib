import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

def ConstrainedGroupActionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_action_endgame (A : AdmissibleClass) :
    ConstrainedGroupActionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse