import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionSymmetry

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SymmetryObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.symmetryConclusion

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse