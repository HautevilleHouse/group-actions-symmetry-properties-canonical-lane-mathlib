import GroupActionsSymmetryPropertiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse