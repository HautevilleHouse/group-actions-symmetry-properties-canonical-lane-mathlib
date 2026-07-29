import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure GroupActionObject where
  group : Type u
  actionSet : Type v
  action : group → actionSet → actionSet
  faithful : Prop
  transitive : Prop
  symmetryPreserving : Prop
  faithfulTerm : faithful
  transitiveTerm : transitive

def GroupActionWitnessClosed (O : GroupActionObject) : Prop :=
  O.symmetryPreserving

structure AdmissibleClass where
  object : GroupActionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse