import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure GroupActionSpace where
  carrier : Type u
  group : Type v
  action : group → carrier → carrier
  identityAction : ∀ x : carrier, action (1 : group) x = x
  compatibility : ∀ (g h : group) (x : carrier), action (g * h) x = action g (action h x)

structure SymmetryObject where
  space : GroupActionSpace
  faithfulAction : Prop
  transitiveAction : Prop
  freeAction : Prop
  symmetryConclusion : Prop

structure AdmittedObject where
  object : SymmetryObject
  symmetryConclusion : object.symmetryConclusion

def SymmetryObjectClosed (O : AdmittedObject) : Prop :=
  O.object.symmetryConclusion

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse