import GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionBridge

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.symmetryPreserving

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse