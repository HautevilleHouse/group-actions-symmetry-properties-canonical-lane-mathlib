import GroupActionsSymmetryPropertiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure AdmissibleClass where
  object : GroupActionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse
